package org.courses.utils;

import org.springframework.data.domain.Page;

import java.util.ArrayList;
import java.util.List;

public class PageWrapper<T> {
    private int maxPageItemDisplay;
    private Page<T> page;
    private List<PageItem> items;
    private int currentNumber;
    private String url;

    public PageWrapper(Page<T> page, String url) {
        new PageWrapper(page, url, 5);
    }

    public PageWrapper(Page<T> page, String url, int maxPageItemDisplay) {
        this.page = page;
        this.url = url;
        items = new ArrayList<>();
        this.maxPageItemDisplay = maxPageItemDisplay;
        currentNumber = page.getNumber() + 1;
        int start, size;
        if (page.getTotalPages() <= maxPageItemDisplay) {
            start = 1;
            size = page.getTotalPages();
        } else {
            if (currentNumber <= maxPageItemDisplay - maxPageItemDisplay / 2) {
                start = 1;
                size = maxPageItemDisplay;
            } else if (currentNumber >= page.getTotalPages() - maxPageItemDisplay / 2) {
                start = page.getTotalPages() - maxPageItemDisplay + 1;
                size = maxPageItemDisplay;
            } else {
                start = currentNumber - maxPageItemDisplay / 2;
                size = maxPageItemDisplay;
            }
        }
        for (int i = 0; i < size; i++) {
            items.add(new PageItem(start + i, (start + i) == currentNumber));
        }
    }

    public List<T> getContent() {
        return page.getContent();
    }

    public int getSize() {
        return page.getSize();
    }

    public int getTotalPages() {
        return page.getTotalPages();
    }

    public int getNumber() {
        return currentNumber;
    }

    public boolean isFirstPage() {
        return page.isFirst();
    }

    public boolean isLastPage() {
        return page.isLast();
    }

    public boolean isHasPreviousPage() {
        return page.hasPrevious();
    }

    public boolean isHasNextPage() {
        return page.hasNext();
    }


    public int getMaxPageItemDisplay() {
        return maxPageItemDisplay;
    }

    public void setMaxPageItemDisplay(int maxPageItemDisplay) {
        this.maxPageItemDisplay = maxPageItemDisplay;
    }

    public long getTotalElements() {
        return page.getTotalElements();
    }

    public Page<T> getPage() {
        return page;
    }

    public void setPage(Page<T> page) {
        this.page = page;
    }

    public List<PageItem> getItems() {
        return items;
    }

    public void setItems(List<PageItem> items) {
        this.items = items;
    }

    public int getCurrentNumber() {
        return currentNumber;
    }

    public void setCurrentNumber(int currentNumber) {
        this.currentNumber = currentNumber;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public class PageItem {
        private int number;
        private boolean current;

        public PageItem(int number, boolean current) {
            this.number = number;
            this.current = current;
        }

        public int getNumber() {
            return this.number;
        }

        public boolean isCurrent() {
            return this.current;
        }
    }
}

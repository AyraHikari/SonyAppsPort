.class public interface abstract Lcom/sonyericsson/music/search/SearchHandler$OnSearch;
.super Ljava/lang/Object;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSearch"
.end annotation


# virtual methods
.method public abstract doSearch(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract onSearchComplete(Landroid/database/Cursor;)V
.end method

.method public abstract onSearching()V
.end method

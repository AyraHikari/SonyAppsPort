.class public interface abstract Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;
.super Ljava/lang/Object;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClickListener"
.end annotation


# virtual methods
.method public abstract onCreateSearchItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V
.end method

.method public abstract onLabelItemClicked(Lcom/sonyericsson/music/search/Label;)V
.end method

.method public abstract onSearchItemClicked(Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V
.end method

.method public abstract onSearchItemContextClicked(Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V
.end method

.class public interface abstract Lcom/sonyericsson/music/ui/RearrangeableListView$OnItemMovedListener;
.super Ljava/lang/Object;
.source "RearrangeableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ui/RearrangeableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemMovedListener"
.end annotation


# virtual methods
.method public abstract isMovableView(I)Z
.end method

.method public abstract onItemCollapsed(Landroid/view/View;)V
.end method

.method public abstract onItemExpanded(Landroid/view/View;Z)V
.end method

.method public abstract onItemMoved(II)V
.end method

.class public interface abstract Lcom/sonyericsson/music/library/LibraryListAdapter$CursorOwner;
.super Ljava/lang/Object;
.source "LibraryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/LibraryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CursorOwner"
.end annotation


# virtual methods
.method public abstract getCursor()Landroid/database/Cursor;
.end method

.method public abstract swapCursor(Landroid/database/Cursor;)V
.end method

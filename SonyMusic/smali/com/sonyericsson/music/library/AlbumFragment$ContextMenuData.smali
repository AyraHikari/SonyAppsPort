.class Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;
.super Ljava/lang/Object;
.source "AlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContextMenuData"
.end annotation


# instance fields
.field final mCursor:Landroid/database/Cursor;

.field final mSelectedPosition:I


# direct methods
.method constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;->mCursor:Landroid/database/Cursor;

    .line 834
    iput p2, p0, Lcom/sonyericsson/music/library/AlbumFragment$ContextMenuData;->mSelectedPosition:I

    return-void
.end method

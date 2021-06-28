.class Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;
.super Ljava/lang/Object;
.source "ArtistTracksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/artist/ArtistTracksFragment;
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

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;->mCursor:Landroid/database/Cursor;

    .line 403
    iput p2, p0, Lcom/sonyericsson/music/library/artist/ArtistTracksFragment$ContextMenuData;->mSelectedPosition:I

    return-void
.end method

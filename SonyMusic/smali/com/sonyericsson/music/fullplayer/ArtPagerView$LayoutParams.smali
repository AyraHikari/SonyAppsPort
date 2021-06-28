.class Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ArtPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/ArtPagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParams"
.end annotation


# instance fields
.field final adapterPos:I

.field final id:Ljava/lang/String;

.field final posOffset:I


# direct methods
.method public constructor <init>(IILjava/lang/String;II)V
    .locals 0

    .line 373
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 374
    iput-object p3, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;->id:Ljava/lang/String;

    .line 375
    iput p4, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;->adapterPos:I

    .line 376
    iput p5, p0, Lcom/sonyericsson/music/fullplayer/ArtPagerView$LayoutParams;->posOffset:I

    return-void
.end method

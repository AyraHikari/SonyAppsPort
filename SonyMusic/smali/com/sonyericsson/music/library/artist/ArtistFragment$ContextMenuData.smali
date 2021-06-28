.class Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;
.super Ljava/lang/Object;
.source "ArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/artist/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextMenuData"
.end annotation


# instance fields
.field final mLocalId:J

.field final mName:Ljava/lang/String;

.field final mSelectedPosition:I


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput-wide p1, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;->mLocalId:J

    .line 848
    iput-object p3, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;->mName:Ljava/lang/String;

    .line 850
    iput p4, p0, Lcom/sonyericsson/music/library/artist/ArtistFragment$ContextMenuData;->mSelectedPosition:I

    return-void
.end method

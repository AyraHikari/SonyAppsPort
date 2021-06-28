.class Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;
.super Ljava/lang/Object;
.source "TracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/TracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexCache"
.end annotation


# instance fields
.field mAlbumIdColIndex:I

.field mAlbumNameColIndex:I

.field mArtistIdColIndex:I

.field mArtistNameColIndex:I

.field mTrackIdColIndex:I

.field mTrackNameColIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/library/TracksAdapter$1;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/music/library/TracksAdapter$IndexCache;-><init>()V

    return-void
.end method

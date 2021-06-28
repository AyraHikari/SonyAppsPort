.class Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;
.super Ljava/lang/Object;
.source "ArtistTracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexCache"
.end annotation


# instance fields
.field albumNameColIndex:I

.field trackIdColIndex:I

.field trackNameColIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$1;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/music/library/artist/ArtistTracksAdapter$IndexCache;-><init>()V

    return-void
.end method

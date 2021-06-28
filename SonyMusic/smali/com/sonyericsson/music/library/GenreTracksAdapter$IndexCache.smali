.class Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;
.super Ljava/lang/Object;
.source "GenreTracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/GenreTracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexCache"
.end annotation


# instance fields
.field albumIdColIndex:I

.field albumNameColIndex:I

.field artistIdColIndex:I

.field artistNameColIndex:I

.field trackIdColIndex:I

.field trackNameColIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/library/GenreTracksAdapter$1;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GenreTracksAdapter$IndexCache;-><init>()V

    return-void
.end method

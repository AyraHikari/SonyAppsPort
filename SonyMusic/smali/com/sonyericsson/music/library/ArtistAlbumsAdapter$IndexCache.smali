.class Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;
.super Ljava/lang/Object;
.source "ArtistAlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/ArtistAlbumsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexCache"
.end annotation


# instance fields
.field albumIdColIndex:I

.field albumNameColIndex:I

.field artistNameColIndex:I

.field firstYearColIndex:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$1;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Lcom/sonyericsson/music/library/ArtistAlbumsAdapter$IndexCache;-><init>()V

    return-void
.end method

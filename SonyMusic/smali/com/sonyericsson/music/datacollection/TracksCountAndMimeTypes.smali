.class public Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;
.super Ljava/lang/Object;
.source "TracksCountAndMimeTypes.java"


# instance fields
.field private final mMimeTypes:Ljava/lang/String;

.field private final mNbrOfHdTracks:I

.field private final mNbrOfLocalTracks:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->mNbrOfLocalTracks:I

    .line 15
    iput p2, p0, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->mNbrOfHdTracks:I

    .line 16
    iput-object p3, p0, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->mMimeTypes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMimeTypes()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->mMimeTypes:Ljava/lang/String;

    return-object v0
.end method

.method public getNbrOfHdTracks()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->mNbrOfHdTracks:I

    return v0
.end method

.method public getNbrOfLocalTracks()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/sonyericsson/music/datacollection/TracksCountAndMimeTypes;->mNbrOfLocalTracks:I

    return v0
.end method

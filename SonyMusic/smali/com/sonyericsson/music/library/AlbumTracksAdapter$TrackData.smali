.class public Lcom/sonyericsson/music/library/AlbumTracksAdapter$TrackData;
.super Ljava/lang/Object;
.source "AlbumTracksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumTracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackData"
.end annotation


# instance fields
.field albumTracksCursorPos:I

.field artistName:Ljava/lang/String;

.field trackId:I

.field trackName:Ljava/lang/String;

.field trackNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

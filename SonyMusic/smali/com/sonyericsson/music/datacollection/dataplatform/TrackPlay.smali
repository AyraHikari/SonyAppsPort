.class Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;
.super Ljava/lang/Object;
.source "TrackPlay.java"


# instance fields
.field private final mArtist:Ljava/lang/String;

.field private final mPlayDuration:I

.field private final mPlayedFromType:Ljava/lang/String;

.field private final mStartDate:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->mArtist:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->mPlayedFromType:Ljava/lang/String;

    .line 18
    iput-wide p3, p0, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->mStartDate:J

    .line 19
    iput p5, p0, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->mPlayDuration:I

    return-void
.end method


# virtual methods
.method getArtist()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method getPlayDuration()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->mPlayDuration:I

    return v0
.end method

.method getPlayedFromType()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->mPlayedFromType:Ljava/lang/String;

    return-object v0
.end method

.method getStartDate()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;->mStartDate:J

    return-wide v0
.end method

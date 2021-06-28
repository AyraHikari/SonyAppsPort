.class public Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
.super Ljava/lang/Object;
.source "MediaPlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

.field public static final ROUTE_TYPE_DLNA_CAST:I = 0x3

.field public static final ROUTE_TYPE_GOOGLE_CAST:I = 0x4

.field public static final ROUTE_TYPE_LIVE_AUDIO_CAST:I = 0x2

.field public static final ROUTE_TYPE_LOCAL:I = 0x1

.field public static final ROUTE_TYPE_UNKNOWN:I


# instance fields
.field private final mAudioSession:I

.field private final mDelayedPauseEndMillis:J

.field private final mIsBuffering:Z

.field private final mIsInPlayQueueMode:Z

.field private final mIsPlaying:Z

.field private final mIsShuffled:Z

.field private final mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final mPlaybackPos:I

.field private final mRepeatMode:I

.field private final mRouteId:Ljava/lang/String;

.field private final mRouteType:I

.field private final mTrack:Lcom/sonyericsson/music/common/Track;

.field private final mTrackColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->createDefault()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->DEFAULT:Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    .line 47
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsPlaying:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRepeatMode:I

    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsShuffled:Z

    .line 79
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsBuffering:Z

    .line 80
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsInPlayQueueMode:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mDelayedPauseEndMillis:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mPlaybackPos:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrackColor:I

    .line 86
    const-class v0, Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/common/Track;

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mAudioSession:I

    .line 88
    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-boolean v0, p1, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsPlaying:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsPlaying:Z

    .line 61
    iget v0, p1, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mRepeatMode:I

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRepeatMode:I

    .line 62
    iget-boolean v0, p1, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsShuffled:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsShuffled:Z

    .line 63
    iget-boolean v0, p1, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsBuffering:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsBuffering:Z

    .line 64
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->access$100(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteType:I

    .line 65
    iget-boolean v0, p1, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsInPlayQueueMode:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsInPlayQueueMode:Z

    .line 66
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->access$200(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteId:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->access$300(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mDelayedPauseEndMillis:J

    .line 68
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->access$400(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mPlaybackPos:I

    .line 69
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->access$500(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrackColor:I

    .line 70
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->access$600(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 71
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->access$700(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mAudioSession:I

    .line 72
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->access$800(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method private static createDefault()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 5

    .line 92
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isBuffering(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isInPlayQueueMode(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 98
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const-wide/16 v3, -0x1

    .line 99
    invoke-virtual {v0, v3, v4}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->playbackPos(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 103
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mediaSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method private readBoolean(Landroid/os/Parcel;)Z
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public buildUpon()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 3

    .line 109
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;-><init>()V

    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRepeatMode:I

    .line 110
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsShuffled:Z

    .line 111
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsBuffering:Z

    .line 112
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isBuffering(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsInPlayQueueMode:Z

    .line 113
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->isInPlayQueueMode(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteType:I

    .line 114
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteId:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mDelayedPauseEndMillis:J

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mPlaybackPos:I

    .line 117
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->playbackPos(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrackColor:I

    .line 118
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrack:Lcom/sonyericsson/music/common/Track;

    .line 119
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mAudioSession:I

    .line 120
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 121
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mediaSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioSession()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mAudioSession:I

    return v0
.end method

.method public getDelayedPauseEndMillis()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mDelayedPauseEndMillis:J

    return-wide v0
.end method

.method public getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public getPlaybackPos()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mPlaybackPos:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRepeatMode:I

    return v0
.end method

.method public getRouteId()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteId:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteType()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteType:I

    return v0
.end method

.method public getTrack()Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrack:Lcom/sonyericsson/music/common/Track;

    return-object v0
.end method

.method public getTrackColor()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrackColor:I

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsBuffering:Z

    return v0
.end method

.method public isInPlayQueueMode()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsInPlayQueueMode:Z

    return v0
.end method

.method public isLocalPlayback()Z
    .locals 3

    .line 145
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsPlaying:Z

    return v0
.end method

.method public isShuffled()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsShuffled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 189
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsPlaying:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRepeatMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsShuffled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsBuffering:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mIsInPlayQueueMode:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, -0x1

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mRouteId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mDelayedPauseEndMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mPlaybackPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrackColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 200
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mAudioSession:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

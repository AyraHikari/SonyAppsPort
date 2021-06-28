.class Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;
.super Ljava/lang/Object;
.source "RecentlyPlayedProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentlyPlayedData"
.end annotation


# instance fields
.field private final mContainerUri:Ljava/lang/String;

.field private final mTimestamp:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 980
    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->mContainerUri:Ljava/lang/String;

    .line 981
    iput p2, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->mTimestamp:I

    return-void
.end method


# virtual methods
.method getContainerUri()Ljava/lang/String;
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->mContainerUri:Ljava/lang/String;

    return-object v0
.end method

.method getTimestamp()I
    .locals 1

    .line 989
    iget v0, p0, Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedProvider$RecentlyPlayedData;->mTimestamp:I

    return v0
.end method

.class Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper$RecentlyPlayedDatabaseColumns;
.super Ljava/lang/Object;
.source "RecentlyPlayedDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/provider/RecentlyPlayedDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecentlyPlayedDatabaseColumns"
.end annotation


# static fields
.field static final RECENTLY_PLAYED_CONTAINER_URI:Ljava/lang/String; = "container_uri"

.field static final RECENTLY_PLAYED_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field static final RECENTLY_PLAYED_TYPE:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

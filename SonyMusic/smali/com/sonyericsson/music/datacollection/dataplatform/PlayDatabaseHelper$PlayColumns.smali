.class public abstract Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper$PlayColumns;
.super Ljava/lang/Object;
.source "PlayDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayColumns"
.end annotation


# static fields
.field static final ACCUMULATED_PAUSE_TIME:Ljava/lang/String; = "accumulated_pause_time"

.field static final ARTIST:Ljava/lang/String; = "artist"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field static final PAUSE_TIME:Ljava/lang/String; = "pause_time"

.field static final PLAYED_FROM_TYPE:Ljava/lang/String; = "played_from_type"

.field static final PLAY_DURATION:Ljava/lang/String; = "play_duration"

.field static final START_DATE:Ljava/lang/String; = "start_date"

.field static final START_TIME:Ljava/lang/String; = "start_time"

.field static final STATUS:Ljava/lang/String; = "status"

.field static final TRACK_URI:Ljava/lang/String; = "track_uri"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue$Columns;
.super Ljava/lang/Object;
.source "PlayqueueStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final ARTIST_ID:Ljava/lang/String; = "artist_id"

.field public static final AVAILABLE:Ljava/lang/String; = "available"

.field public static final DATA:Ljava/lang/String; = "_data"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PLAY_ORDER:Ljava/lang/String; = "play_order"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TRACK_URI:Ljava/lang/String; = "track_uri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

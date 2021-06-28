.class public Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$LastPlayed$Columns;
.super Ljava/lang/Object;
.source "PlayqueueStoreInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$LastPlayed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final PLAYQUEUE_POSITION:Ljava/lang/String; = "playqueue_pos"

.field public static final REPEAT_MODE:Ljava/lang/String; = "repeat_mode"

.field public static final SHUFFLE_MODE:Ljava/lang/String; = "shuffle_mode"

.field public static final TRACK_POSITION:Ljava/lang/String; = "track_pos"

.field public static final TRACK_URI:Ljava/lang/String; = "track_uri"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

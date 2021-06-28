.class public Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$Columns;
.super Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue$Columns;
.source "PlayqueueStoreInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field static final BACKUP_PLAY_ORDER:Ljava/lang/String; = "backup_play_order"

.field public static final HD_AUDIO:Ljava/lang/String; = "hd_audio"

.field public static final PLAY_ORDER:Ljava/lang/String; = "play_order"

.field public static final SOURCE_PLAY_ORDER:Ljava/lang/String; = "source_play_order"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue$Columns;-><init>()V

    return-void
.end method

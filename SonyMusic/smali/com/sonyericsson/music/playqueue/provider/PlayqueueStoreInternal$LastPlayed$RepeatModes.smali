.class public Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$LastPlayed$RepeatModes;
.super Ljava/lang/Object;
.source "PlayqueueStoreInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueStoreInternal$LastPlayed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatModes"
.end annotation


# static fields
.field public static final REPEAT_MODE_ALL:I = 0x1

.field public static final REPEAT_MODE_OFF:I = 0x0

.field public static final REPEAT_MODE_ONE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

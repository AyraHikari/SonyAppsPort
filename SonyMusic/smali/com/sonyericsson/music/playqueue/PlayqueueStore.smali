.class public Lcom/sonyericsson/music/playqueue/PlayqueueStore;
.super Ljava/lang/Object;
.source "PlayqueueStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sonyericsson.music.playqueue"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://com.sonyericsson.music.playqueue/"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

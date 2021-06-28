.class public final Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue;
.super Ljava/lang/Object;
.source "PlayqueueStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/PlayqueueStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Playqueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue$Columns;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/audio"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/audio"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.sonyericsson.music.playqueue/playqueue"

    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

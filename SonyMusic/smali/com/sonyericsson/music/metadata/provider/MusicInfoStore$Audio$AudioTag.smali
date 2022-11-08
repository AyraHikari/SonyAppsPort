.class final Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AudioTag;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AudioTag"
.end annotation


# static fields
.field static final AUDIO_ID:Ljava/lang/String; = "audio_id"

.field static final AUDIO_TAG_COLUMNS:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1240
    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "title"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "artist"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "album"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "genre"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "track"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "year"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AudioTag;->AUDIO_TAG_COLUMNS:Landroidx/collection/ArraySet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

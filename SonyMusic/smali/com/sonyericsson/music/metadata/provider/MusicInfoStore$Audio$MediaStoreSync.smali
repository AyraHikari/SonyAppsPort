.class public final Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;
.super Ljava/lang/Object;
.source "MusicInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaStoreSync"
.end annotation


# static fields
.field static final FINISH_SOMC_LEGACY_MIGRATION_CALL:Ljava/lang/String; = "finish_somc_legacy_migration"

.field static final LEGACY_AUDIO_COLUMN:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final LEGACY_SOMC_AUDIO_URI:Landroid/net/Uri;

.field public static final METHOD_SYNC_MEDIASTORE_DATA:Ljava/lang/String; = "sync_mediastore_data"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "content://media_legacy/external/somc_audio"

    .line 1217
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_SOMC_AUDIO_URI:Landroid/net/Uri;

    .line 1221
    new-instance v0, Landroidx/collection/ArraySet;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "volume_name"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "relative_path"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "genre"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "_display_name"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "title"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "artist"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "album"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "track"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "year"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "is_music"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_AUDIO_COLUMN:Landroidx/collection/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

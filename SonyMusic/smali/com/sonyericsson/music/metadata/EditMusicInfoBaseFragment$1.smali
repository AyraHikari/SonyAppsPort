.class synthetic Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;
.super Ljava/lang/Object;
.source "EditMusicInfoBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoBaseFragment$ArtAction:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 729
    invoke-static {}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->values()[Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoBaseFragment$ArtAction:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoBaseFragment$ArtAction:[I

    sget-object v2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->SET_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoBaseFragment$ArtAction:[I

    sget-object v3, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;->REMOVE_IMAGE:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :catch_1
    invoke-static {}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->values()[Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I

    :try_start_2
    sget-object v2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I

    sget-object v3, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$1;->$SwitchMap$com$sonyericsson$music$metadata$EditMusicInfoUtils$ImageType:[I

    sget-object v2, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

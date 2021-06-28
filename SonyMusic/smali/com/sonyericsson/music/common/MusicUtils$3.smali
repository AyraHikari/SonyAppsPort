.class synthetic Lcom/sonyericsson/music/common/MusicUtils$3;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 117
    invoke-static {}, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->values()[Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/common/MusicUtils$3;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/common/MusicUtils$3;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    sget-object v1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/music/common/MusicUtils$3;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    sget-object v1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_NO_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

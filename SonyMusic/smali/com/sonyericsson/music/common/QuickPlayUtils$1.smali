.class synthetic Lcom/sonyericsson/music/common/QuickPlayUtils$1;
.super Ljava/lang/Object;
.source "QuickPlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/QuickPlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 213
    invoke-static {}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->values()[Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/music/common/QuickPlayUtils$1;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method

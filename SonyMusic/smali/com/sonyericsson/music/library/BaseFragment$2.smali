.class synthetic Lcom/sonyericsson/music/library/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$library$BaseFragment$BackgroundColorSetting:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 247
    invoke-static {}, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->values()[Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/library/BaseFragment$2;->$SwitchMap$com$sonyericsson$music$library$BaseFragment$BackgroundColorSetting:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/music/library/BaseFragment$2;->$SwitchMap$com$sonyericsson$music$library$BaseFragment$BackgroundColorSetting:[I

    sget-object v1, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->NONE:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/music/library/BaseFragment$2;->$SwitchMap$com$sonyericsson$music$library$BaseFragment$BackgroundColorSetting:[I

    sget-object v1, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->LIST:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/music/library/BaseFragment$2;->$SwitchMap$com$sonyericsson$music$library$BaseFragment$BackgroundColorSetting:[I

    sget-object v1, Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;->WINDOW:Lcom/sonyericsson/music/library/BaseFragment$BackgroundColorSetting;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

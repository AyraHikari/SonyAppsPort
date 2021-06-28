.class public final enum Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;
.super Ljava/lang/Enum;
.source "ApiAvailabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/ApiAvailabilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Api"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

.field public static final enum CLEAR_AUDIO_PLUS:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

.field public static final enum CLEAR_AUDIO_PLUS_GLOBAL:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

.field public static final enum DSEE_HX_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

.field public static final enum LOW_POWER_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;


# instance fields
.field private final mDeprecatedInVersion:I

.field private mMethod:Ljava/lang/String;

.field private mParameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mStringIdentifier:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 33
    new-instance v6, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    const-string v1, "CLEAR_AUDIO_PLUS"

    const-string v4, "com.sonymobile.audioeffect.ClearAudioPlusIntent"

    const/4 v2, 0x0

    const/16 v3, 0x1c

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v6, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    .line 37
    new-instance v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    const-string v8, "CLEAR_AUDIO_PLUS_GLOBAL"

    const-string v11, "com.sonymobile.audioeffect.ClearAudioPlus"

    const-string v13, "isGlobalSetting"

    const/4 v1, 0x0

    new-array v14, v1, [Ljava/lang/Class;

    const/4 v9, 0x1

    const/16 v10, 0x1c

    const/4 v12, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS_GLOBAL:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    .line 43
    new-instance v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    const-string v16, "LOW_POWER_AUDIO"

    const-string v19, "android.media.MediaPlayer"

    const-string v21, "setLowPowerAudio"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const/16 v17, 0x2

    const/16 v18, 0x1c

    const/16 v20, 0x2

    move-object v15, v0

    move-object/from16 v22, v3

    invoke-direct/range {v15 .. v22}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->LOW_POWER_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    .line 49
    new-instance v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    const-string v5, "DSEE_HX_AUDIO"

    const-string v8, "com.sonymobile.audioeffect.DseeHxSettings"

    const/4 v6, 0x3

    const/16 v7, 0x1c

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->DSEE_HX_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    sget-object v3, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    aput-object v3, v0, v1

    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->CLEAR_AUDIO_PLUS_GLOBAL:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->LOW_POWER_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->DSEE_HX_AUDIO:Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->$VALUES:[Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mDeprecatedInVersion:I

    .line 66
    iput-object p4, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mStringIdentifier:Ljava/lang/String;

    .line 67
    iput p5, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mType:I

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mDeprecatedInVersion:I

    .line 72
    iput-object p4, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mStringIdentifier:Ljava/lang/String;

    .line 73
    iput p5, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mType:I

    .line 74
    iput-object p6, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mMethod:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mParameterTypes:[Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->isApiAvailable()Z

    move-result p0

    return p0
.end method

.method private checkForClassAvailability()Z
    .locals 1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mStringIdentifier:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkForMethodAvailability()Z
    .locals 3

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mStringIdentifier:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mParameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkForResourceAvailability()Z
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mStringIdentifier:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 104
    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x1

    aget-object v5, v0, v4

    aget-object v0, v0, v1

    invoke-virtual {v2, v3, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private isApiAvailable()Z
    .locals 3

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mDeprecatedInVersion:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 86
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->mType:I

    packed-switch v0, :pswitch_data_0

    return v2

    .line 92
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->checkForMethodAvailability()Z

    move-result v0

    return v0

    .line 90
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->checkForResourceAvailability()Z

    move-result v0

    return v0

    .line 88
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->checkForClassAvailability()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;
    .locals 1

    .line 32
    const-class v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;
    .locals 1

    .line 32
    sget-object v0, Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->$VALUES:[Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/common/ApiAvailabilityManager$Api;

    return-object v0
.end method

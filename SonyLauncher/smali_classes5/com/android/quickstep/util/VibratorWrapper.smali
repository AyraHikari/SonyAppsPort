.class public Lcom/android/quickstep/util/VibratorWrapper;
.super Ljava/lang/Object;
.source "VibratorWrapper.java"


# static fields
.field public static final EFFECT_CLICK:Landroid/os/VibrationEffect;

.field public static final EFFECT_TEXTURE_TICK:Landroid/os/VibrationEffect;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/util/VibratorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

.field public static final VIBRATION_ATTRS:Landroid/media/AudioAttributes;


# instance fields
.field private final mHasVibrator:Z

.field private mIsHapticFeedbackEnabled:Z

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsHapticFeedbackEnabled(Lcom/android/quickstep/util/VibratorWrapper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misHapticFeedbackEnabled(Lcom/android/quickstep/util/VibratorWrapper;Landroid/content/ContentResolver;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/VibratorWrapper;->isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 47
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 48
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 49
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    .line 52
    nop

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    .line 54
    nop

    .line 55
    const/16 v1, 0x15

    invoke-static {v1}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v1

    sput-object v1, Lcom/android/quickstep/util/VibratorWrapper;->EFFECT_TEXTURE_TICK:Landroid/os/VibrationEffect;

    .line 60
    sput-object v0, Lcom/android/quickstep/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    .line 69
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mHasVibrator:Z

    .line 70
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0}, Lcom/android/quickstep/util/VibratorWrapper;->isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/quickstep/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    .line 73
    new-instance v2, Lcom/android/quickstep/util/VibratorWrapper$1;

    sget-object v3, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/quickstep/util/VibratorWrapper$1;-><init>(Lcom/android/quickstep/util/VibratorWrapper;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 79
    .local v2, "observer":Landroid/database/ContentObserver;
    const-string v3, "haptic_feedback_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 81
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "observer":Landroid/database/ContentObserver;
    goto :goto_0

    .line 82
    :cond_0
    iput-boolean v1, p0, Lcom/android/quickstep/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    .line 84
    :goto_0
    return-void
.end method

.method private isHapticFeedbackEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 87
    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method synthetic lambda$vibrate$0$com-android-quickstep-util-VibratorWrapper(Landroid/os/VibrationEffect;)V
    .locals 2
    .param p1, "vibrationEffect"    # Landroid/os/VibrationEffect;

    .line 93
    iget-object v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/quickstep/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method synthetic lambda$vibrate$1$com-android-quickstep-util-VibratorWrapper(IFLandroid/os/VibrationEffect;)V
    .locals 3
    .param p1, "primitiveId"    # I
    .param p2, "primitiveScale"    # F
    .param p3, "fallbackEffect"    # Landroid/os/VibrationEffect;

    .line 105
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->areAllPrimitivesSupported([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p1, p2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/quickstep/util/VibratorWrapper;->VIBRATION_ATTRS:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p3, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 113
    :goto_0
    return-void
.end method

.method public vibrate(IFLandroid/os/VibrationEffect;)V
    .locals 2
    .param p1, "primitiveId"    # I
    .param p2, "primitiveScale"    # F
    .param p3, "fallbackEffect"    # Landroid/os/VibrationEffect;

    .line 103
    iget-boolean v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mHasVibrator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/VibratorWrapper;IFLandroid/os/VibrationEffect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 115
    :cond_0
    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 2
    .param p1, "vibrationEffect"    # Landroid/os/VibrationEffect;

    .line 92
    iget-boolean v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mHasVibrator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/util/VibratorWrapper;->mIsHapticFeedbackEnabled:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/util/VibratorWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/util/VibratorWrapper;Landroid/os/VibrationEffect;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 95
    :cond_0
    return-void
.end method

.class public Lcom/android/launcher3/taskbar/TaskbarEduController;
.super Ljava/lang/Object;
.source "TaskbarEduController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;
    }
.end annotation


# static fields
.field private static final WAVE_ANIM_DELAY:J = 0xfaL

.field private static final WAVE_ANIM_EACH_ICON_DURATION:J = 0x279L

.field private static final WAVE_ANIM_FRACTION_BOTTOM:F = 0.9f

.field private static final WAVE_ANIM_FRACTION_TOP:F = 0.4f

.field private static final WAVE_ANIM_ICON_SCALE:F = 1.2f

.field private static final WAVE_ANIM_OVERSHOOT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final WAVE_ANIM_OVERSHOOT_RETURN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final WAVE_ANIM_SLOT_MACHINE_DURATION:J = 0x43dL

.field private static final WAVE_ANIM_SLOT_MACHINE_NUM_ICONS:I = 0x3

.field private static final WAVE_ANIM_STAGGER:J = 0x32L

.field private static final WAVE_ANIM_TO_BOTTOM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final WAVE_ANIM_TO_TOP_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mAnim:Landroid/animation/Animator;

.field mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

.field private final mWaveAnimTranslationY:F

.field private final mWaveAnimTranslationYReturnOvershoot:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnim(Lcom/android/launcher3/taskbar/TaskbarEduController;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mAnim:Landroid/animation/Animator;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarEduController;->WAVE_ANIM_TO_TOP_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 57
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarEduController;->WAVE_ANIM_TO_BOTTOM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 58
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarEduController;->WAVE_ANIM_OVERSHOOT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 59
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarEduController;->WAVE_ANIM_OVERSHOOT_RETURN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 77
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_edu_wave_anim_trans_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mWaveAnimTranslationY:F

    .line 79
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_edu_wave_anim_trans_y_return_overshoot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mWaveAnimTranslationYReturnOvershoot:F

    .line 81
    return-void
.end method

.method private createWaveAnim()Landroid/animation/Animator;
    .locals 17

    .line 126
    move-object/from16 v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 127
    .local v1, "waveAnim":Landroid/animation/AnimatorSet;
    iget-object v2, v0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getIconViews()[Landroid/view/View;

    move-result-object v2

    .line 128
    .local v2, "icons":[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 129
    aget-object v4, v2, v3

    .line 130
    .local v4, "icon":Landroid/view/View;
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 132
    .local v5, "iconAnim":Landroid/animation/AnimatorSet;
    const/4 v6, 0x4

    new-array v7, v6, [Landroid/animation/Keyframe;

    .line 133
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v7, v11

    const v10, 0x3f99999a    # 1.2f

    .line 134
    const v12, 0x3ecccccd    # 0.4f

    invoke-static {v12, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v7, v13

    .line 135
    const v10, 0x3f666666    # 0.9f

    invoke-static {v10, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v7, v15

    .line 136
    invoke-static {v9, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    const/4 v6, 0x3

    aput-object v14, v7, v6

    .line 138
    .local v7, "scaleKeyframes":[Landroid/animation/Keyframe;
    aget-object v14, v7, v13

    sget-object v9, Lcom/android/launcher3/taskbar/TaskbarEduController;->WAVE_ANIM_TO_TOP_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v14, v9}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 139
    aget-object v14, v7, v15

    sget-object v6, Lcom/android/launcher3/taskbar/TaskbarEduController;->WAVE_ANIM_TO_BOTTOM_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v14, v6}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 141
    const/4 v14, 0x5

    new-array v14, v14, [Landroid/animation/Keyframe;

    .line 142
    invoke-static {v8, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v16

    aput-object v16, v14, v11

    iget v11, v0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mWaveAnimTranslationY:F

    neg-float v11, v11

    .line 143
    invoke-static {v12, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    aput-object v11, v14, v13

    .line 144
    invoke-static {v10, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    aput-object v10, v14, v15

    const v10, 0x3f733333    # 0.95f

    iget v11, v0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mWaveAnimTranslationYReturnOvershoot:F

    .line 146
    invoke-static {v10, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v14, v11

    .line 149
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v14, v10

    move-object v8, v14

    .line 151
    .local v8, "translationYKeyframes":[Landroid/animation/Keyframe;
    aget-object v10, v8, v13

    invoke-virtual {v10, v9}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    aget-object v9, v8, v15

    invoke-virtual {v9, v6}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 153
    const/4 v6, 0x3

    aget-object v9, v8, v6

    sget-object v6, Lcom/android/launcher3/taskbar/TaskbarEduController;->WAVE_ANIM_OVERSHOOT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v9, v6}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    const/4 v6, 0x4

    aget-object v6, v8, v6

    sget-object v9, Lcom/android/launcher3/taskbar/TaskbarEduController;->WAVE_ANIM_OVERSHOOT_RETURN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v9}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    new-array v6, v13, [Landroid/animation/PropertyValuesHolder;

    sget-object v9, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 157
    invoke-static {v9, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    .line 156
    invoke-static {v4, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 158
    const-wide/16 v9, 0x279

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 156
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 159
    new-array v6, v13, [Landroid/animation/PropertyValuesHolder;

    sget-object v11, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 160
    invoke-static {v11, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v6, v12

    .line 159
    invoke-static {v4, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 161
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 159
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 163
    instance-of v6, v4, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    if-eqz v6, :cond_1

    .line 165
    move-object v6, v4

    check-cast v6, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 166
    .local v6, "predictedAppIcon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    .line 167
    .local v9, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v10, v10, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v10}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getAppIconsForEdu()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda0;

    invoke-direct {v11, v9}, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 168
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda1;-><init>()V

    .line 169
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda2;-><init>()V

    .line 170
    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 171
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 173
    .local v10, "iconsToAnimate":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/BitmapInfo;>;"
    invoke-static {v10}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 174
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x3

    if-le v11, v12, :cond_0

    .line 175
    const/4 v11, 0x0

    invoke-interface {v10, v11, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    .line 177
    :cond_0
    invoke-virtual {v6, v10}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->createSlotMachineAnim(Ljava/util/List;)Landroid/animation/Animator;

    move-result-object v11

    .line 178
    .local v11, "slotMachineAnim":Landroid/animation/Animator;
    if-eqz v11, :cond_1

    .line 179
    const-wide/16 v12, 0x43d

    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 183
    .end local v6    # "predictedAppIcon":Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    .end local v9    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v10    # "iconsToAnimate":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/icons/BitmapInfo;>;"
    .end local v11    # "slotMachineAnim":Landroid/animation/Animator;
    :cond_1
    const-wide/16 v9, 0x32

    int-to-long v11, v3

    mul-long/2addr v11, v9

    invoke-virtual {v5, v11, v12}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 184
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 128
    .end local v4    # "icon":Landroid/view/View;
    .end local v5    # "iconAnim":Landroid/animation/AnimatorSet;
    .end local v7    # "scaleKeyframes":[Landroid/animation/Keyframe;
    .end local v8    # "translationYKeyframes":[Landroid/animation/Keyframe;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 186
    .end local v3    # "i":I
    :cond_2
    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 187
    return-object v1
.end method

.method static synthetic lambda$createWaveAnim$2(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .locals 2
    .param p0, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "appInfo"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 168
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$createWaveAnim$3(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 1
    .param p0, "appInfo"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 169
    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    return-object v0
.end method

.method static synthetic lambda$createWaveAnim$4(Lcom/android/launcher3/icons/BitmapInfo;)Z
    .locals 1
    .param p0, "bitmap"    # Lcom/android/launcher3/icons/BitmapInfo;

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BitmapInfo;->isNullOrLowRes()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private startAnim(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mAnim:Landroid/animation/Animator;

    .line 113
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarEduController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarEduController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 120
    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarEduController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tisShowingEdu=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mWaveAnimTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmWaveAnimTranslationY=%.2f"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mWaveAnimTranslationYReturnOvershoot:F

    .line 199
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v4

    .line 196
    const-string v1, "%s\tmWaveAnimTranslationYReturnOvershoot=%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method hideEdu()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->close(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 84
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 85
    return-void
.end method

.method synthetic lambda$showEdu$0$com-android-launcher3-taskbar-TaskbarEduController()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    return-void
.end method

.method synthetic lambda$showEdu$1$com-android-launcher3-taskbar-TaskbarEduController()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->taskbar_edu:I

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 91
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v2

    .line 90
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarEduView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    .line 92
    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->init(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V

    .line 93
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mTaskbarEduView:Lcom/android/launcher3/taskbar/TaskbarEduView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduView;->show()V

    .line 95
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->createWaveAnim()Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->startAnim(Landroid/animation/Animator;)V

    .line 96
    return-void
.end method

.method showEdu()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setTaskbarWindowFullscreen(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/TaskbarEduController$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

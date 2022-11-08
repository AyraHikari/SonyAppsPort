.class public Lcom/android/launcher3/states/StateAnimationConfig;
.super Ljava/lang/Object;
.source "StateAnimationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/states/StateAnimationConfig$AnimType;,
        Lcom/android/launcher3/states/StateAnimationConfig$AnimationFlags;
    }
.end annotation


# static fields
.field public static final ANIM_ALL_APPS_FADE:I = 0xa

.field public static final ANIM_DEPTH:I = 0xd

.field public static final ANIM_HOTSEAT_FADE:I = 0x10

.field public static final ANIM_HOTSEAT_SCALE:I = 0x4

.field public static final ANIM_HOTSEAT_TRANSLATE:I = 0x5

.field public static final ANIM_OVERVIEW_ACTIONS_FADE:I = 0xe

.field public static final ANIM_OVERVIEW_FADE:I = 0x9

.field public static final ANIM_OVERVIEW_MODAL:I = 0xc

.field public static final ANIM_OVERVIEW_SCALE:I = 0x6

.field public static final ANIM_OVERVIEW_TRANSLATE_X:I = 0x7

.field public static final ANIM_OVERVIEW_TRANSLATE_Y:I = 0x8

.field public static final ANIM_SCRIM_FADE:I = 0xb

.field private static final ANIM_TYPES_COUNT:I = 0x11

.field public static final ANIM_VERTICAL_PROGRESS:I = 0x0

.field public static final ANIM_WORKSPACE_FADE:I = 0x3

.field public static final ANIM_WORKSPACE_PAGE_TRANSLATE_X:I = 0xf

.field public static final ANIM_WORKSPACE_SCALE:I = 0x1

.field public static final ANIM_WORKSPACE_TRANSLATE:I = 0x2

.field public static final SKIP_ALL_ANIMATIONS:I = 0x1

.field public static final SKIP_DEPTH_CONTROLLER:I = 0x4

.field public static final SKIP_OVERVIEW:I = 0x2

.field public static final SKIP_SCRIM:I = 0x8


# instance fields
.field public animFlags:I

.field public duration:J

.field protected final mInterpolators:[Landroid/view/animation/Interpolator;

.field public userControlled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 90
    const/16 v0, 0x11

    new-array v0, v0, [Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    .line 92
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 3
    .param p1, "target"    # Lcom/android/launcher3/states/StateAnimationConfig;

    .line 98
    iget-wide v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    iput-wide v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->duration:J

    .line 99
    iget v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    iput v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    .line 100
    iget-boolean v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    iput-boolean v0, p1, Lcom/android/launcher3/states/StateAnimationConfig;->userControlled:Z

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p1, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    iget-object v2, p0, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p1, "animId"    # I
    .param p2, "fallback"    # Landroid/view/animation/Interpolator;

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    move-object v0, p2

    :cond_0
    return-object v0
.end method

.method public hasAnimationFlag(I)Z
    .locals 1
    .param p1, "a"    # I

    .line 126
    iget v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->animFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInterpolator(ILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "animId"    # I
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/states/StateAnimationConfig;->mInterpolators:[Landroid/view/animation/Interpolator;

    aput-object p2, v0, p1

    .line 120
    return-void
.end method

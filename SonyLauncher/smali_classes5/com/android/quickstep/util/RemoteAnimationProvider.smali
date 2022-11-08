.class public abstract Lcom/android/quickstep/util/RemoteAnimationProvider;
.super Ljava/lang/Object;
.source "RemoteAnimationProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLowestOpaqueLayerTarget([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 5
    .param p0, "appTargets"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p1, "mode"    # I

    .line 32
    const v0, 0x7fffffff

    .line 33
    .local v0, "lowestLayer":I
    const/4 v1, -0x1

    .line 34
    .local v1, "lowestLayerIndex":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 35
    aget-object v3, p0, v2

    .line 36
    .local v3, "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    if-ne v4, p1, :cond_0

    iget-boolean v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    if-nez v4, :cond_0

    .line 37
    iget v4, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    .line 38
    .local v4, "layer":I
    if-ge v4, v0, :cond_0

    .line 39
    move v0, v4

    .line 40
    move v1, v2

    .line 34
    .end local v3    # "target":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v4    # "layer":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 44
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 45
    aget-object v2, p0, v1

    goto :goto_1

    .line 46
    :cond_2
    const/4 v2, 0x0

    .line 44
    :goto_1
    return-object v2
.end method


# virtual methods
.method public abstract createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end method

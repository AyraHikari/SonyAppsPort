.class public Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
.super Ljava/lang/Object;
.source "RemoteAnimationTargetCompat.java"


# static fields
.field public static final ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final ACTIVITY_TYPE_HOME:I = 0x2

.field public static final ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field public static final MODE_CHANGING:I = 0x2

.field public static final MODE_CLOSING:I = 0x1

.field public static final MODE_OPENING:I


# instance fields
.field public final activityType:I

.field public final allowEnterPip:Z

.field public final clipRect:Landroid/graphics/Rect;

.field public final contentInsets:Landroid/graphics/Rect;

.field public final isNotInRecents:Z

.field public final isTranslucent:Z

.field public final leash:Landroid/view/SurfaceControl;

.field public final localBounds:Landroid/graphics/Rect;

.field private final mStartLeash:Landroid/view/SurfaceControl;

.field public final mode:I

.field public final position:Landroid/graphics/Point;

.field public final prefixOrderIndex:I

.field public final rotationChange:I

.field public final screenSpaceBounds:Landroid/graphics/Rect;

.field public final sourceContainerBounds:Landroid/graphics/Rect;

.field private final startBounds:Landroid/graphics/Rect;

.field public final startScreenSpaceBounds:Landroid/graphics/Rect;

.field public taskId:I

.field public taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final windowConfiguration:Landroid/app/WindowConfiguration;

.field public final windowType:I


# direct methods
.method public constructor <init>(Landroid/view/RemoteAnimationTarget;)V
    .locals 1
    .param p1, "app"    # Landroid/view/RemoteAnimationTarget;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 86
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->mode:I

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    .line 87
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    .line 88
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isTranslucent:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    .line 89
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->clipRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    .line 90
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->position:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    .line 91
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    .line 92
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 93
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 94
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    .line 95
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    .line 96
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->isNotInRecents:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    .line 97
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->contentInsets:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    .line 98
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    .line 99
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 100
    iget-boolean v0, p1, Landroid/view/RemoteAnimationTarget;->allowEnterPip:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    .line 103
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startLeash:Landroid/view/SurfaceControl;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mStartLeash:Landroid/view/SurfaceControl;

    .line 104
    iget v0, p1, Landroid/view/RemoteAnimationTarget;->windowType:I

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    .line 105
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 106
    iget-object v0, p1, Landroid/view/RemoteAnimationTarget;->startBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7
    .param p1, "change"    # Landroid/window/TransitionInfo$Change;
    .param p2, "order"    # I
    .param p3, "info"    # Landroid/window/TransitionInfo;
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 215
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->newModeToLegacyMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    .line 218
    invoke-static {p3, p1, p2, p4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    .line 220
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 221
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    .line 223
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    .line 224
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    .line 225
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 226
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->sourceContainerBounds:Landroid/graphics/Rect;

    .line 227
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 228
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    .line 230
    iput p2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    .line 232
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    .line 233
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 234
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    .line 235
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    goto :goto_3

    .line 237
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    .line 238
    iput v3, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    .line 240
    :goto_3
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 241
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getAllowEnterPip()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    .line 242
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mStartLeash:Landroid/view/SurfaceControl;

    .line 243
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->rotationChange:I

    .line 244
    iput v1, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    .line 246
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 247
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    goto :goto_4

    .line 248
    :cond_4
    new-instance v0, Landroid/app/WindowConfiguration;

    invoke-direct {v0}, Landroid/app/WindowConfiguration;-><init>()V

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 249
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    .line 250
    return-void
.end method

.method private static createLeash(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILandroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .locals 4
    .param p0, "info"    # Landroid/window/TransitionInfo;
    .param p1, "change"    # Landroid/window/TransitionInfo$Change;
    .param p2, "order"    # I
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 189
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_transition-leash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 199
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 203
    .local v0, "leashSurface":Landroid/view/SurfaceControl;
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {v0, p1, v2, p0, p3}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 204
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 205
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 206
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 207
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 208
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p3, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 209
    return-object v0
.end method

.method private static newModeToLegacyMode(I)I
    .locals 1
    .param p0, "newMode"    # I

    .line 110
    packed-switch p0, :pswitch_data_0

    .line 118
    const/4 v0, 0x2

    return v0

    .line 116
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 113
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setupLeash(Landroid/view/SurfaceControl;Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .locals 9
    .param p0, "leash"    # Landroid/view/SurfaceControl;
    .param p1, "change"    # Landroid/window/TransitionInfo$Change;
    .param p2, "layer"    # I
    .param p3, "info"    # Landroid/window/TransitionInfo;
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 139
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 141
    .local v0, "isOpening":Z
    :goto_1
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 143
    .local v4, "zSplitLine":I
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v5

    .line 146
    .local v5, "mode":I
    invoke-static {p1, p3}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 147
    if-eq v5, v3, :cond_2

    if-eq v5, v2, :cond_2

    const/4 v1, 0x6

    if-ne v5, v1, :cond_3

    .line 148
    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p4, p0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 150
    :cond_3
    return-void

    .line 153
    :cond_4
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v6

    if-eqz v6, :cond_5

    move v1, v3

    .line 155
    .local v1, "hasParent":Z
    :cond_5
    if-nez v1, :cond_6

    .line 156
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p4, p0, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 157
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 158
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getRootOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 157
    invoke-virtual {p4, p0, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 161
    :cond_6
    if-eq v5, v3, :cond_b

    if-ne v5, v2, :cond_7

    goto :goto_3

    .line 172
    :cond_7
    const/4 v2, 0x2

    if-eq v5, v2, :cond_9

    const/4 v2, 0x4

    if-ne v5, v2, :cond_8

    goto :goto_2

    .line 181
    :cond_8
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    .line 173
    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 175
    sub-int v2, v4, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    .line 178
    :cond_a
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    .line 162
    :cond_b
    :goto_3
    if-eqz v0, :cond_c

    .line 163
    invoke-virtual {p3}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v4

    sub-int/2addr v2, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 164
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_d

    .line 166
    const/4 v2, 0x0

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_4

    .line 170
    :cond_c
    sub-int v2, v4, p2

    invoke-virtual {p4, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 183
    :cond_d
    :goto_4
    return-void
.end method

.method public static wrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 11
    .param p0, "info"    # Landroid/window/TransitionInfo;
    .param p1, "wallpapers"    # Z
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Z",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;"
        }
    .end annotation

    .line 271
    .local p3, "leashMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 273
    .local v1, "childTaskTargets":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;>;"
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 274
    .local v2, "excludedParentTaskIds":Landroid/util/IntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 275
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionInfo$Change;

    .line 276
    .local v4, "change":Landroid/window/TransitionInfo$Change;
    nop

    .line 277
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 278
    .local v5, "changeIsWallpaper":Z
    :goto_1
    if-eq p1, v5, :cond_1

    goto :goto_2

    .line 280
    :cond_1
    new-instance v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 281
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-direct {v6, v4, v7, p0, p2}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/window/TransitionInfo$Change;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    .line 282
    .local v6, "targetCompat":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    if-eqz p3, :cond_2

    .line 283
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    iget-object v8, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_2
    invoke-virtual {v4}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    .line 286
    .local v7, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v7, :cond_6

    .line 289
    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v8}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 290
    goto :goto_2

    .line 294
    :cond_3
    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 295
    .local v8, "childTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    if-eqz v8, :cond_4

    .line 299
    iget-object v10, v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v10, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 300
    iget v10, v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iput v10, v6, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    .line 301
    iget v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 305
    :cond_4
    iget v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    if-eq v10, v9, :cond_6

    iget v10, v7, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    .line 306
    invoke-virtual {v2, v10}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v10

    if-ne v10, v9, :cond_6

    .line 307
    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->contains(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 311
    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v1, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    goto :goto_2

    .line 318
    :cond_5
    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 319
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v2, v9}, Landroid/util/IntArray;->add(I)V

    .line 324
    .end local v8    # "childTaskTarget":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v4    # "change":Landroid/window/TransitionInfo$Change;
    .end local v5    # "changeIsWallpaper":Z
    .end local v6    # "targetCompat":Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v7    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 327
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-object v3
.end method

.method public static wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 5
    .param p0, "apps"    # [Landroid/view/RemoteAnimationTarget;

    .line 253
    if-eqz p0, :cond_0

    array-length v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 254
    .local v0, "length":I
    :goto_0
    new-array v1, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 255
    .local v1, "appsCompat":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 256
    new-instance v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;-><init>(Landroid/view/RemoteAnimationTarget;)V

    aput-object v3, v1, v2

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mStartLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 340
    :cond_1
    return-void
.end method

.method public unwrap()Landroid/view/RemoteAnimationTarget;
    .locals 21

    .line 123
    move-object/from16 v0, p0

    new-instance v19, Landroid/view/RemoteAnimationTarget;

    move-object/from16 v1, v19

    iget v2, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskId:I

    iget v3, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    iget-object v4, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    iget-boolean v5, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isTranslucent:Z

    iget-object v6, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->clipRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->contentInsets:Landroid/graphics/Rect;

    iget v8, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->prefixOrderIndex:I

    iget-object v9, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget-object v10, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-boolean v13, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->isNotInRecents:Z

    iget-object v14, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mStartLeash:Landroid/view/SurfaceControl;

    iget-object v15, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startBounds:Landroid/graphics/Rect;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->allowEnterPip:Z

    move/from16 v17, v1

    iget v1, v0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->windowType:I

    move/from16 v18, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    return-object v19
.end method

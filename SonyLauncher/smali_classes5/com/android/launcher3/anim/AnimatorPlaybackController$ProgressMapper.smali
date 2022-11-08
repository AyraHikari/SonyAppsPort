.class interface abstract Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;
.super Ljava/lang/Object;
.source "AnimatorPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ProgressMapper"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 356
    new-instance v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->DEFAULT:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    return-void
.end method

.method public static synthetic lambda$static$0(FF)F
    .locals 1
    .param p0, "progress"    # F
    .param p1, "globalEndProgress"    # F

    .line 357
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float v0, p0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract getProgress(FF)F
.end method

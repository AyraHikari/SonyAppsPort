.class public interface abstract Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;
.super Ljava/lang/Object;
.source "LauncherAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteAnimationFactory"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    .line 241
    return-void
.end method

.method public abstract onCreateAnimation(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
.end method

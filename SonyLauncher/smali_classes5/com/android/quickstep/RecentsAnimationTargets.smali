.class public Lcom/android/quickstep/RecentsAnimationTargets;
.super Lcom/android/quickstep/RemoteAnimationTargets;
.source "RecentsAnimationTargets.java"


# instance fields
.field public final homeContentInsets:Landroid/graphics/Rect;

.field public final minimizedHomeBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "apps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "wallpapers"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "nonApps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "homeContentInsets"    # Landroid/graphics/Rect;
    .param p5, "minimizedHomeBounds"    # Landroid/graphics/Rect;

    .line 36
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    .line 37
    iput-object p4, p0, Lcom/android/quickstep/RecentsAnimationTargets;->homeContentInsets:Landroid/graphics/Rect;

    .line 38
    iput-object p5, p0, Lcom/android/quickstep/RecentsAnimationTargets;->minimizedHomeBounds:Landroid/graphics/Rect;

    .line 39
    return-void
.end method


# virtual methods
.method public hasTargets()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationTargets;->unfilteredApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

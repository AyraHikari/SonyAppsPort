.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;,
        Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;,
        Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;,
        Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;,
        Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;,
        Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \'2\u00020\u0001:\u0006&\'()*+B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000eJ\u0014\u0010\u0013\u001a\u00060\u0014R\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u000e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000eJH\u0010\u0018\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001a2\u0014\u0010\u001e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010 \u0012\u0004\u0012\u00020!0\u001fH\u0007J0\u0010\"\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020#H\u0007J\u0014\u0010$\u001a\u00020\u0011*\u00020\u00162\u0006\u0010%\u001a\u00020\u001aH\u0002R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/android/systemui/animation/ActivityLaunchAnimator;",
        "",
        "launchAnimator",
        "Lcom/android/systemui/animation/LaunchAnimator;",
        "dialogToAppAnimator",
        "(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;)V",
        "callback",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;",
        "getCallback",
        "()Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;",
        "setCallback",
        "(Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;)V",
        "listeners",
        "Ljava/util/LinkedHashSet;",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;",
        "Lkotlin/collections/LinkedHashSet;",
        "addListener",
        "",
        "listener",
        "createRunner",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;",
        "controller",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
        "removeListener",
        "startIntentWithAnimation",
        "animate",
        "",
        "packageName",
        "",
        "showOverLockscreen",
        "intentStarter",
        "Lkotlin/Function1;",
        "Landroid/view/RemoteAnimationAdapter;",
        "",
        "startPendingIntentWithAnimation",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;",
        "callOnIntentStartedOnMainThread",
        "willAnimate",
        "Callback",
        "Companion",
        "Controller",
        "Listener",
        "PendingIntentStarter",
        "Runner",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ANIMATION_DELAY_NAV_FADE_IN:J

.field private static final ANIMATION_DURATION_NAV_FADE_IN:J = 0x10aL

.field private static final ANIMATION_DURATION_NAV_FADE_OUT:J = 0x85L

.field public static final Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

.field private static final DIALOG_TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

.field private static final INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

.field private static final LAUNCH_TIMEOUT:J = 0x3e8L

.field private static final NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;


# instance fields
.field private callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

.field private final dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field private final launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field private final listeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    .line 62
    new-instance v1, Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 63
    nop

    .line 64
    nop

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 62
    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x96

    const-wide/16 v9, 0x96

    const-wide/16 v11, 0xb7

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/animation/LaunchAnimator$Timings;-><init>(JJJJJ)V

    sput-object v1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 75
    nop

    .line 76
    nop

    .line 77
    nop

    .line 75
    const-wide/16 v3, 0x0

    const-wide/16 v7, 0xc8

    const-wide/16 v9, 0xc8

    const-wide/16 v11, 0x0

    const/16 v13, 0x13

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->copy$default(Lcom/android/systemui/animation/LaunchAnimator$Timings;JJJJJILjava/lang/Object;)Lcom/android/systemui/animation/LaunchAnimator$Timings;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DIALOG_TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 81
    new-instance v2, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 82
    sget-object v3, Lcom/android/systemui/animation/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    const-string v4, "EMPHASIZED"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->access$createPositionXInterpolator(Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 84
    sget-object v4, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const-string v5, "LINEAR_OUT_SLOW_IN"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/4 v6, 0x0

    const v7, 0x3f19999a    # 0.6f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v5, Landroid/view/animation/Interpolator;

    .line 81
    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;-><init>(Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    sput-object v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 92
    invoke-virtual {v1}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x10a

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->ANIMATION_DELAY_NAV_FADE_IN:J

    .line 94
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->STANDARD_DECELERATE:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 95
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v6, v8, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;)V
    .locals 1
    .param p1, "launchAnimator"    # Lcom/android/systemui/animation/LaunchAnimator;
    .param p2, "dialogToAppAnimator"    # Lcom/android/systemui/animation/LaunchAnimator;

    const-string v0, "launchAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogToAppAnimator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 117
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 50
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 50
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 52
    new-instance p1, Lcom/android/systemui/animation/LaunchAnimator;

    sget-object p4, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    invoke-direct {p1, p4, v0}, Lcom/android/systemui/animation/LaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V

    .line 50
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 57
    new-instance p2, Lcom/android/systemui/animation/LaunchAnimator;

    sget-object p3, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DIALOG_TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    sget-object p4, Lcom/android/systemui/animation/ActivityLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    invoke-direct {p2, p3, p4}, Lcom/android/systemui/animation/LaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V

    .line 50
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator;)V

    .line 621
    return-void
.end method

.method public static final synthetic access$getANIMATION_DELAY_NAV_FADE_IN$cp()J
    .locals 2

    .line 50
    sget-wide v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->ANIMATION_DELAY_NAV_FADE_IN:J

    return-wide v0
.end method

.method public static final synthetic access$getDIALOG_TIMINGS$cp()Lcom/android/systemui/animation/LaunchAnimator$Timings;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->DIALOG_TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    return-object v0
.end method

.method public static final synthetic access$getDialogToAppAnimator$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    return-object v0
.end method

.method public static final synthetic access$getINTERPOLATORS$cp()Lcom/android/systemui/animation/LaunchAnimator$Interpolators;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    return-object v0
.end method

.method public static final synthetic access$getLaunchAnimator$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    return-object v0
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/systemui/animation/ActivityLaunchAnimator;)Ljava/util/LinkedHashSet;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public static final synthetic access$getNAV_FADE_IN_INTERPOLATOR$cp()Landroid/view/animation/Interpolator;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getNAV_FADE_OUT_INTERPOLATOR$cp()Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->NAV_FADE_OUT_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method private final callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .locals 2
    .param p1, "$this$callOnIntentStartedOnMainThread"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .param p2, "willAnimate"    # Z

    .line 208
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-interface {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$callOnIntentStartedOnMainThread$1;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$callOnIntentStartedOnMainThread$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-interface {p1, p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    .line 215
    :goto_0
    return-void
.end method

.method public static synthetic startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 139
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 141
    const/4 p2, 0x1

    move v2, p2

    goto :goto_0

    .line 139
    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 142
    const/4 p3, 0x0

    move-object v3, p3

    goto :goto_1

    .line 139
    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 143
    const/4 p4, 0x0

    move v4, p4

    goto :goto_2

    .line 139
    :cond_2
    move v4, p4

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic startPendingIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 227
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 229
    const/4 p2, 0x1

    .line 227
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 230
    const/4 p3, 0x0

    .line 227
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public final createRunner(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .locals 1
    .param p1, "controller"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    return-object v0
.end method

.method public final getCallback()Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    return-object v0
.end method

.method public final removeListener(Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public final setCallback(Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    return-void
.end method

.method public final startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/RemoteAnimationAdapter;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intentStarter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/RemoteAnimationAdapter;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intentStarter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 18
    .param p1, "controller"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .param p2, "animate"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "showOverLockscreen"    # Z
    .param p5, "intentStarter"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/RemoteAnimationAdapter;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v0, "intentStarter"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string v6, "ActivityLaunchAnimator"

    if-eqz v2, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_5

    .line 153
    :cond_0
    iget-object v7, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    if-eqz v7, :cond_7

    .line 155
    .local v7, "callback":Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;
    new-instance v8, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-direct {v8, v1, v2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 156
    .local v8, "runner":Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    invoke-interface {v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;->isOnKeyguard()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez p4, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v5

    .line 160
    .local v9, "hideKeyguardWithAnimation":Z
    :goto_0
    if-nez v9, :cond_2

    .line 161
    new-instance v17, Landroid/view/RemoteAnimationAdapter;

    .line 162
    move-object v12, v8

    check-cast v12, Landroid/view/IRemoteAnimationRunner;

    .line 163
    sget-object v11, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    invoke-virtual {v11}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getTotalDuration()J

    move-result-wide v13

    .line 164
    invoke-virtual {v11}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getTotalDuration()J

    move-result-wide v15

    const/16 v11, 0x96

    int-to-long v10, v11

    sub-long/2addr v15, v10

    .line 161
    move-object/from16 v11, v17

    invoke-direct/range {v11 .. v16}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    goto :goto_1

    .line 167
    :cond_2
    move-object v10, v0

    check-cast v10, Landroid/view/RemoteAnimationAdapter;

    move-object/from16 v17, v0

    .line 160
    :goto_1
    move-object/from16 v10, v17

    .line 172
    .local v10, "animationAdapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v3, :cond_3

    if-eqz v10, :cond_3

    .line 173
    nop

    .line 174
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v11

    .line 175
    nop

    .line 174
    invoke-interface {v11, v3, v10, v0}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    move-object v11, v0

    check-cast v11, Ljava/lang/Throwable;

    const-string v12, "Unable to register the remote animation"

    invoke-static {v6, v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    invoke-interface {v4, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 186
    .local v0, "launchResult":I
    const/4 v11, 0x2

    if-eq v0, v11, :cond_5

    .line 187
    if-eqz v0, :cond_5

    .line 188
    const/4 v11, 0x3

    if-ne v0, v11, :cond_4

    .line 189
    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x1

    .line 185
    :goto_4
    nop

    .line 191
    .local v5, "willAnimate":Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "launchResult="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " willAnimate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hideKeyguardWithAnimation="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 192
    nop

    .line 191
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {v1, v2, v5}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 197
    if-eqz v5, :cond_6

    .line 198
    invoke-virtual {v8}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->postTimeout$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib()V

    .line 201
    if-eqz v9, :cond_6

    .line 202
    move-object v6, v8

    check-cast v6, Landroid/view/IRemoteAnimationRunner;

    invoke-interface {v7, v6}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;->hideKeyguardWithAnimation(Landroid/view/IRemoteAnimationRunner;)V

    .line 205
    :cond_6
    return-void

    .line 153
    .end local v0    # "launchResult":I
    .end local v5    # "willAnimate":Z
    .end local v7    # "callback":Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;
    .end local v8    # "runner":Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
    .end local v9    # "hideKeyguardWithAnimation":Z
    .end local v10    # "animationAdapter":Landroid/view/RemoteAnimationAdapter;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 154
    nop

    .line 153
    const-string v5, "ActivityLaunchAnimator.callback must be set before using this animator"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_8
    :goto_5
    const-string v7, "Starting intent with no animation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-direct {v1, v2, v5}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 150
    :goto_6
    return-void
.end method

.method public final startIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/RemoteAnimationAdapter;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intentStarter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const-string v0, "intentStarter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startPendingIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;ILjava/lang/Object;)V

    return-void
.end method

.method public final startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const-string v0, "intentStarter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startPendingIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;ILjava/lang/Object;)V

    return-void
.end method

.method public final startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
    .locals 9
    .param p1, "controller"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .param p2, "animate"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "intentStarter"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    const-string v0, "intentStarter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;

    invoke-direct {v0, p4}, Lcom/android/systemui/animation/ActivityLaunchAnimator$startPendingIntentWithAnimation$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startIntentWithAnimation$default(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 236
    return-void
.end method

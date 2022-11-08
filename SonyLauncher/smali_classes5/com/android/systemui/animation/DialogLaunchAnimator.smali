.class public final Lcom/android/systemui/animation/DialogLaunchAnimator;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/DialogLaunchAnimator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogLaunchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogLaunchAnimator.kt\ncom/android/systemui/animation/DialogLaunchAnimator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,885:1\n286#2,2:886\n286#2,2:888\n286#2,2:890\n1849#2,2:892\n286#2,2:894\n1#3:896\n*S KotlinDebug\n*F\n+ 1 DialogLaunchAnimator.kt\ncom/android/systemui/animation/DialogLaunchAnimator\n*L\n103#1:886,2\n142#1:888,2\n170#1:890,2\n258#1:892,2\n267#1:894,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J#\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007\u00a2\u0006\u0002\u0010\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0018J \u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0007J\"\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0007H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/android/systemui/animation/DialogLaunchAnimator;",
        "",
        "dreamManager",
        "Landroid/service/dreams/IDreamManager;",
        "launchAnimator",
        "Lcom/android/systemui/animation/LaunchAnimator;",
        "isForTesting",
        "",
        "(Landroid/service/dreams/IDreamManager;Lcom/android/systemui/animation/LaunchAnimator;Z)V",
        "openedDialogs",
        "Ljava/util/HashSet;",
        "Lcom/android/systemui/animation/AnimatedDialog;",
        "Lkotlin/collections/HashSet;",
        "createActivityLaunchController",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
        "view",
        "Landroid/view/View;",
        "cujType",
        "",
        "(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
        "disableAllCurrentDialogsExitAnimations",
        "",
        "dismissStack",
        "dialog",
        "Landroid/app/Dialog;",
        "showFromDialog",
        "animateFrom",
        "animateBackgroundBoundsChange",
        "showFromView",
        "Companion",
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
.field private static final Companion:Lcom/android/systemui/animation/DialogLaunchAnimator$Companion;

.field private static final INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG_LAUNCH_ANIMATION_RUNNING:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final dreamManager:Landroid/service/dreams/IDreamManager;

.field private final isForTesting:Z

.field private final launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field private final openedDialogs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/animation/AnimatedDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/animation/DialogLaunchAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/DialogLaunchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->Companion:Lcom/android/systemui/animation/DialogLaunchAnimator$Companion;

    .line 57
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    sput-object v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 61
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->getINTERPOLATORS()Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object v1

    .line 62
    sget-object v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->getINTERPOLATORS()Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->getPositionInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 61
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->copy$default(Lcom/android/systemui/animation/LaunchAnimator$Interpolators;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;ILjava/lang/Object;)Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 65
    sget v0, Lcom/android/systemui/animation/R$id;->tag_launch_animation_running:I

    sput v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->TAG_LAUNCH_ANIMATION_RUNNING:I

    return-void
.end method

.method public constructor <init>(Landroid/service/dreams/IDreamManager;)V
    .locals 7

    const-string v0, "dreamManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;-><init>(Landroid/service/dreams/IDreamManager;Lcom/android/systemui/animation/LaunchAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/service/dreams/IDreamManager;Lcom/android/systemui/animation/LaunchAnimator;)V
    .locals 7

    const-string v0, "dreamManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launchAnimator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;-><init>(Landroid/service/dreams/IDreamManager;Lcom/android/systemui/animation/LaunchAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/service/dreams/IDreamManager;Lcom/android/systemui/animation/LaunchAnimator;Z)V
    .locals 1
    .param p1, "dreamManager"    # Landroid/service/dreams/IDreamManager;
    .param p2, "launchAnimator"    # Lcom/android/systemui/animation/LaunchAnimator;
    .param p3, "isForTesting"    # Z

    const-string v0, "dreamManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launchAnimator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 53
    iput-object p2, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 54
    iput-boolean p3, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->isForTesting:Z

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    .line 51
    return-void
.end method

.method public synthetic constructor <init>(Landroid/service/dreams/IDreamManager;Lcom/android/systemui/animation/LaunchAnimator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 51
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 53
    new-instance p2, Lcom/android/systemui/animation/LaunchAnimator;

    sget-object p5, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    sget-object v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->INTERPOLATORS:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    invoke-direct {p2, p5, v0}, Lcom/android/systemui/animation/LaunchAnimator;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V

    .line 51
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 54
    const/4 p3, 0x0

    .line 51
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/DialogLaunchAnimator;-><init>(Landroid/service/dreams/IDreamManager;Lcom/android/systemui/animation/LaunchAnimator;Z)V

    .line 271
    return-void
.end method

.method public static final synthetic access$getOpenedDialogs$p(Lcom/android/systemui/animation/DialogLaunchAnimator;)Ljava/util/HashSet;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    return-object v0
.end method

.method public static synthetic createActivityLaunchController$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/view/View;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 0

    .line 165
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 167
    const/4 p2, 0x0

    .line 165
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/animation/DialogLaunchAnimator;->createActivityLaunchController(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic showFromDialog$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/app/Dialog;ZILjava/lang/Object;)V
    .locals 0

    .line 136
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 139
    const/4 p3, 0x0

    .line 136
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Z)V

    return-void
.end method

.method public static synthetic showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    .line 89
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 92
    const/4 p3, 0x0

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView(Landroid/app/Dialog;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final createActivityLaunchController(Landroid/view/View;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/android/systemui/animation/DialogLaunchAnimator;->createActivityLaunchController$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/view/View;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v0

    return-object v0
.end method

.method public final createActivityLaunchController(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cujType"    # Ljava/lang/Integer;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    .line 170
    nop

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 890
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Lcom/android/systemui/animation/AnimatedDialog;

    .local v5, "it":Lcom/android/systemui/animation/AnimatedDialog;
    const/4 v6, 0x0

    .line 170
    .local v6, "$i$a$-firstOrNull-DialogLaunchAnimator$createActivityLaunchController$animatedDialog$1":I
    invoke-virtual {v5}, Lcom/android/systemui/animation/AnimatedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "it":Lcom/android/systemui/animation/AnimatedDialog;
    .end local v6    # "$i$a$-firstOrNull-DialogLaunchAnimator$createActivityLaunchController$animatedDialog$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 891
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    move-object v3, v4

    .line 170
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Lcom/android/systemui/animation/AnimatedDialog;

    .line 169
    if-nez v3, :cond_2

    .line 171
    return-object v4

    .line 169
    :cond_2
    move-object v0, v3

    .line 176
    .local v0, "animatedDialog":Lcom/android/systemui/animation/AnimatedDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/animation/AnimatedDialog;->setExitAnimationDisabled(Z)V

    .line 178
    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 181
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    return-object v4

    .line 185
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->getDialogContentWithBackground()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v4

    .line 187
    .local v2, "dialogContentWithBackground":Landroid/view/ViewGroup;
    :cond_4
    sget-object v3, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller$Companion;->fromView(Landroid/view/View;Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object v3

    if-nez v3, :cond_5

    .line 188
    return-object v4

    .line 186
    :cond_5
    nop

    .line 192
    .local v3, "controller":Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    new-instance v4, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;

    invoke-direct {v4, v3, v1, v0}, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/app/Dialog;Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v4, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    return-object v4
.end method

.method public final disableAllCurrentDialogsExitAnimations()V
    .locals 7

    .line 258
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 892
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/animation/AnimatedDialog;

    .local v4, "it":Lcom/android/systemui/animation/AnimatedDialog;
    const/4 v5, 0x0

    .line 258
    .local v5, "$i$a$-forEach-DialogLaunchAnimator$disableAllCurrentDialogsExitAnimations$1":I
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/animation/AnimatedDialog;->setExitAnimationDisabled(Z)V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lcom/android/systemui/animation/AnimatedDialog;
    .end local v5    # "$i$a$-forEach-DialogLaunchAnimator$disableAllCurrentDialogsExitAnimations$1":I
    goto :goto_0

    .line 893
    :cond_0
    nop

    .line 259
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final dismissStack(Landroid/app/Dialog;)V
    .locals 7
    .param p1, "dialog"    # Landroid/app/Dialog;

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    .line 267
    nop

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 894
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/animation/AnimatedDialog;

    .local v4, "it":Lcom/android/systemui/animation/AnimatedDialog;
    const/4 v5, 0x0

    .line 267
    .local v5, "$i$a$-firstOrNull-DialogLaunchAnimator$dismissStack$1":I
    invoke-virtual {v4}, Lcom/android/systemui/animation/AnimatedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "it":Lcom/android/systemui/animation/AnimatedDialog;
    .end local v5    # "$i$a$-firstOrNull-DialogLaunchAnimator$dismissStack$1":I
    if-eqz v4, :cond_0

    goto :goto_0

    .line 895
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 267
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Lcom/android/systemui/animation/AnimatedDialog;

    .line 268
    nop

    .line 267
    if-nez v3, :cond_2

    .line 268
    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 896
    .local v0, "it":Lcom/android/systemui/animation/AnimatedDialog;
    const/4 v1, 0x0

    .line 268
    .local v1, "$i$a$-let-DialogLaunchAnimator$dismissStack$2":I
    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->prepareForStackDismiss()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/animation/AnimatedDialog;->setTouchSurface(Landroid/view/View;)V

    .line 269
    .end local v0    # "it":Lcom/android/systemui/animation/AnimatedDialog;
    .end local v1    # "$i$a$-let-DialogLaunchAnimator$dismissStack$2":I
    :goto_1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 270
    return-void
.end method

.method public final showFromDialog(Landroid/app/Dialog;Landroid/app/Dialog;Z)V
    .locals 8
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "animateFrom"    # Landroid/app/Dialog;
    .param p3, "animateBackgroundBoundsChange"    # Z

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animateFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    .line 142
    nop

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 888
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Lcom/android/systemui/animation/AnimatedDialog;

    .local v5, "it":Lcom/android/systemui/animation/AnimatedDialog;
    const/4 v6, 0x0

    .line 142
    .local v6, "$i$a$-firstOrNull-DialogLaunchAnimator$showFromDialog$view$1":I
    invoke-virtual {v5}, Lcom/android/systemui/animation/AnimatedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "it":Lcom/android/systemui/animation/AnimatedDialog;
    .end local v6    # "$i$a$-firstOrNull-DialogLaunchAnimator$showFromDialog$view$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 889
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    move-object v3, v4

    .line 142
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Lcom/android/systemui/animation/AnimatedDialog;

    .line 143
    nop

    .line 142
    if-nez v3, :cond_2

    .line 143
    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/animation/AnimatedDialog;->getDialogContentWithBackground()Landroid/view/ViewGroup;

    move-result-object v4

    .line 141
    :goto_1
    if-eqz v4, :cond_3

    move-object v0, v4

    .line 147
    .local v0, "view":Landroid/view/ViewGroup;
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView(Landroid/app/Dialog;Landroid/view/View;Z)V

    .line 148
    return-void

    .line 144
    .end local v0    # "view":Landroid/view/ViewGroup;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 145
    nop

    .line 144
    const-string v1, "The animateFrom dialog was not animated using DialogLaunchAnimator.showFrom(View|Dialog)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final showFromView(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 7

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;ZILjava/lang/Object;)V

    return-void
.end method

.method public final showFromView(Landroid/app/Dialog;Landroid/view/View;Z)V
    .locals 15
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animateBackgroundBoundsChange"    # Z

    move-object v0, p0

    const-string v1, "dialog"

    move-object/from16 v11, p1

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "view"

    move-object/from16 v12, p2

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    check-cast v1, Ljava/lang/Iterable;

    .line 103
    nop

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 886
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/android/systemui/animation/AnimatedDialog;

    .local v5, "it":Lcom/android/systemui/animation/AnimatedDialog;
    const/4 v6, 0x0

    .line 103
    .local v6, "$i$a$-firstOrNull-DialogLaunchAnimator$showFromView$animatedParent$1":I
    invoke-virtual {v5}, Lcom/android/systemui/animation/AnimatedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "it":Lcom/android/systemui/animation/AnimatedDialog;
    .end local v6    # "$i$a$-firstOrNull-DialogLaunchAnimator$showFromView$animatedParent$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 887
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 103
    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v4, Lcom/android/systemui/animation/AnimatedDialog;

    .line 102
    move-object v1, v4

    .line 104
    .local v1, "animatedParent":Lcom/android/systemui/animation/AnimatedDialog;
    if-nez v1, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/animation/AnimatedDialog;->getDialogContentWithBackground()Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :goto_2
    move-object v2, v12

    goto :goto_3

    :cond_3
    check-cast v2, Landroid/view/View;

    :goto_3
    move-object v13, v2

    .line 107
    .local v13, "animateFrom":Landroid/view/View;
    sget v2, Lcom/android/systemui/animation/DialogLaunchAnimator;->TAG_LAUNCH_ANIMATION_RUNNING:I

    invoke-virtual {v13, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 108
    const-string v2, "DialogLaunchAnimator"

    const-string v3, "Not running dialog launch animation as there is already one running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/app/Dialog;->show()V

    .line 110
    return-void

    .line 113
    :cond_4
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 115
    new-instance v14, Lcom/android/systemui/animation/AnimatedDialog;

    .line 116
    iget-object v3, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 117
    iget-object v4, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 118
    nop

    .line 115
    new-instance v2, Lcom/android/systemui/animation/DialogLaunchAnimator$showFromView$animatedDialog$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/animation/DialogLaunchAnimator$showFromView$animatedDialog$1;-><init>(Lcom/android/systemui/animation/DialogLaunchAnimator;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    iget-boolean v10, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->isForTesting:Z

    .line 115
    move-object v2, v14

    move-object v5, v13

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object v9, v1

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/animation/AnimatedDialog;-><init>(Lcom/android/systemui/animation/LaunchAnimator;Landroid/service/dreams/IDreamManager;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;Z)V

    .line 126
    .local v2, "animatedDialog":Lcom/android/systemui/animation/AnimatedDialog;
    iget-object v3, v0, Lcom/android/systemui/animation/DialogLaunchAnimator;->openedDialogs:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v2}, Lcom/android/systemui/animation/AnimatedDialog;->start()V

    .line 128
    return-void

    .line 95
    .end local v1    # "animatedParent":Lcom/android/systemui/animation/AnimatedDialog;
    .end local v2    # "animatedDialog":Lcom/android/systemui/animation/AnimatedDialog;
    .end local v13    # "animateFrom":Landroid/view/View;
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 96
    nop

    .line 95
    const-string v2, "showFromView must be called from the main thread and dialog must be created in the main thread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

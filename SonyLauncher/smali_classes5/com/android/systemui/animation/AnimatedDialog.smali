.class final Lcom/android/systemui/animation/AnimatedDialog;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001:\u0001ABU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0011J\u0008\u00102\u001a\u00020\nH\u0002J\u0012\u00103\u001a\u0004\u0018\u00010\u00152\u0006\u00104\u001a\u00020\u0007H\u0002J\u001c\u00105\u001a\u00020\n2\u0012\u00106\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u00107\u001a\u00020\nH\u0002J\u0006\u0010\u0008\u001a\u00020\nJ\u0006\u00108\u001a\u00020\u0007J\u0008\u00109\u001a\u00020\u000eH\u0002J\u0006\u0010:\u001a\u00020\nJ0\u0010;\u001a\u00020\n2\u0006\u0010)\u001a\u00020\u000e2\u000e\u0008\u0002\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\n0=2\u000e\u0008\u0002\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\n0=H\u0002J\u0016\u0010?\u001a\u00020\n2\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\n0=H\u0002R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010#\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101\u00a8\u0006B"
    }
    d2 = {
        "Lcom/android/systemui/animation/AnimatedDialog;",
        "",
        "launchAnimator",
        "Lcom/android/systemui/animation/LaunchAnimator;",
        "dreamManager",
        "Landroid/service/dreams/IDreamManager;",
        "touchSurface",
        "Landroid/view/View;",
        "onDialogDismissed",
        "Lkotlin/Function1;",
        "",
        "dialog",
        "Landroid/app/Dialog;",
        "animateBackgroundBoundsChange",
        "",
        "parentAnimatedDialog",
        "forceDisableSynchronization",
        "(Lcom/android/systemui/animation/LaunchAnimator;Landroid/service/dreams/IDreamManager;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;Z)V",
        "backgroundLayoutListener",
        "Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;",
        "decorView",
        "Landroid/view/ViewGroup;",
        "getDecorView",
        "()Landroid/view/ViewGroup;",
        "decorView$delegate",
        "Lkotlin/Lazy;",
        "decorViewLayoutListener",
        "Landroid/view/View$OnLayoutChangeListener;",
        "getDialog",
        "()Landroid/app/Dialog;",
        "dialogContentWithBackground",
        "getDialogContentWithBackground",
        "setDialogContentWithBackground",
        "(Landroid/view/ViewGroup;)V",
        "dismissRequested",
        "exitAnimationDisabled",
        "getExitAnimationDisabled",
        "()Z",
        "setExitAnimationDisabled",
        "(Z)V",
        "isDismissing",
        "isLaunching",
        "isOriginalDialogViewLaidOut",
        "isTouchSurfaceGhostDrawn",
        "originalDialogBackgroundColor",
        "",
        "getTouchSurface",
        "()Landroid/view/View;",
        "setTouchSurface",
        "(Landroid/view/View;)V",
        "addTouchSurfaceGhost",
        "findFirstViewGroupWithBackground",
        "view",
        "hideDialogIntoView",
        "onAnimationFinished",
        "maybeStartLaunchAnimation",
        "prepareForStackDismiss",
        "shouldAnimateDialogIntoView",
        "start",
        "startAnimation",
        "onLaunchAnimationStart",
        "Lkotlin/Function0;",
        "onLaunchAnimationEnd",
        "synchronizeNextDraw",
        "then",
        "AnimatedBoundsLayoutListener",
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


# instance fields
.field private final backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

.field private final decorView$delegate:Lkotlin/Lazy;

.field private decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private final dialog:Landroid/app/Dialog;

.field private dialogContentWithBackground:Landroid/view/ViewGroup;

.field private dismissRequested:Z

.field private final dreamManager:Landroid/service/dreams/IDreamManager;

.field private exitAnimationDisabled:Z

.field private final forceDisableSynchronization:Z

.field private isDismissing:Z

.field private isLaunching:Z

.field private isOriginalDialogViewLaidOut:Z

.field private isTouchSurfaceGhostDrawn:Z

.field private final launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

.field private final onDialogDismissed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/systemui/animation/AnimatedDialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private originalDialogBackgroundColor:I

.field private final parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

.field private touchSurface:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/LaunchAnimator;Landroid/service/dreams/IDreamManager;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;Z)V
    .locals 2
    .param p1, "launchAnimator"    # Lcom/android/systemui/animation/LaunchAnimator;
    .param p2, "dreamManager"    # Landroid/service/dreams/IDreamManager;
    .param p3, "touchSurface"    # Landroid/view/View;
    .param p4, "onDialogDismissed"    # Lkotlin/jvm/functions/Function1;
    .param p5, "dialog"    # Landroid/app/Dialog;
    .param p6, "animateBackgroundBoundsChange"    # Z
    .param p7, "parentAnimatedDialog"    # Lcom/android/systemui/animation/AnimatedDialog;
    .param p8, "forceDisableSynchronization"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/LaunchAnimator;",
            "Landroid/service/dreams/IDreamManager;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/systemui/animation/AnimatedDialog;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/app/Dialog;",
            "Z",
            "Lcom/android/systemui/animation/AnimatedDialog;",
            "Z)V"
        }
    .end annotation

    const-string v0, "launchAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dreamManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchSurface"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDialogDismissed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialog"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    .line 275
    iput-object p2, p0, Lcom/android/systemui/animation/AnimatedDialog;->dreamManager:Landroid/service/dreams/IDreamManager;

    .line 278
    iput-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    .line 284
    iput-object p4, p0, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed:Lkotlin/jvm/functions/Function1;

    .line 287
    iput-object p5, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    .line 293
    iput-object p7, p0, Lcom/android/systemui/animation/AnimatedDialog;->parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    .line 298
    iput-boolean p8, p0, Lcom/android/systemui/animation/AnimatedDialog;->forceDisableSynchronization:Z

    .line 306
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$decorView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$decorView$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorView$delegate:Lkotlin/Lazy;

    .line 319
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isLaunching:Z

    .line 336
    if-eqz p6, :cond_0

    .line 337
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    invoke-direct {v0}, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;-><init>()V

    goto :goto_0

    .line 339
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    .line 336
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    .line 273
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/animation/LaunchAnimator;Landroid/service/dreams/IDreamManager;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    .line 273
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    .line 273
    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/animation/AnimatedDialog;-><init>(Lcom/android/systemui/animation/LaunchAnimator;Landroid/service/dreams/IDreamManager;Landroid/view/View;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;ZLcom/android/systemui/animation/AnimatedDialog;Z)V

    .line 884
    return-void
.end method

.method public static final synthetic access$addTouchSurfaceGhost(Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->addTouchSurfaceGhost()V

    return-void
.end method

.method public static final synthetic access$getBackgroundLayoutListener$p(Lcom/android/systemui/animation/AnimatedDialog;)Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->backgroundLayoutListener:Lcom/android/systemui/animation/AnimatedDialog$AnimatedBoundsLayoutListener;

    return-object v0
.end method

.method public static final synthetic access$getDismissRequested$p(Lcom/android/systemui/animation/AnimatedDialog;)Z
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dismissRequested:Z

    return v0
.end method

.method public static final synthetic access$getOnDialogDismissed$p(Lcom/android/systemui/animation/AnimatedDialog;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$maybeStartLaunchAnimation(Lcom/android/systemui/animation/AnimatedDialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->maybeStartLaunchAnimation()V

    return-void
.end method

.method public static final synthetic access$setLaunching$p(Lcom/android/systemui/animation/AnimatedDialog;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;
    .param p1, "<set-?>"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->isLaunching:Z

    return-void
.end method

.method public static final synthetic access$setOriginalDialogViewLaidOut$p(Lcom/android/systemui/animation/AnimatedDialog;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;
    .param p1, "<set-?>"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->isOriginalDialogViewLaidOut:Z

    return-void
.end method

.method public static final synthetic access$setTouchSurfaceGhostDrawn$p(Lcom/android/systemui/animation/AnimatedDialog;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;
    .param p1, "<set-?>"    # Z

    .line 273
    iput-boolean p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->isTouchSurfaceGhostDrawn:Z

    return-void
.end method

.method public static final synthetic access$synchronizeNextDraw(Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/AnimatedDialog;
    .param p1, "then"    # Lkotlin/jvm/functions/Function0;

    .line 273
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/AnimatedDialog;->synchronizeNextDraw(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final addTouchSurfaceGhost()V
    .locals 2

    .line 515
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$addTouchSurfaceGhost$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/AnimatedDialog$addTouchSurfaceGhost$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void

    .line 525
    :cond_0
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$addTouchSurfaceGhost$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$addTouchSurfaceGhost$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/android/systemui/animation/AnimatedDialog;->synchronizeNextDraw(Lkotlin/jvm/functions/Function0;)V

    .line 529
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    .line 534
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/animation/LaunchableView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/animation/LaunchableView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 535
    :goto_1
    return-void
.end method

.method private final findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 553
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 554
    return-object v1

    .line 557
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 561
    :cond_1
    const/4 v0, 0x0

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :cond_2
    if-ge v0, v2, :cond_3

    move v3, v0

    .local v3, "i":I
    add-int/lit8 v0, v0, 0x1

    .line 562
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "view.getChildAt(i)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/systemui/animation/AnimatedDialog;->findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 563
    .local v4, "match":Landroid/view/ViewGroup;
    if-eqz v4, :cond_2

    .line 564
    return-object v4

    .line 568
    .end local v3    # "i":I
    .end local v4    # "match":Landroid/view/ViewGroup;
    :cond_3
    return-object v1
.end method

.method private final getDecorView()Landroid/view/ViewGroup;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final hideDialogIntoView(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .param p1, "onAnimationFinished"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->shouldAnimateDialogIntoView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 654
    const-string v0, "DialogLaunchAnimator"

    const-string v2, "Skipping animation of dialog into the touch surface"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    instance-of v2, v0, Lcom/android/systemui/animation/LaunchableView;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/systemui/animation/LaunchableView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 660
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 661
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 664
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    return-void

    .line 669
    :cond_4
    nop

    .line 670
    nop

    .line 669
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/animation/AnimatedDialog$hideDialogIntoView$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/systemui/animation/AnimatedDialog;->startAnimation(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 696
    return-void
.end method

.method private final maybeStartLaunchAnimation()V
    .locals 3

    .line 572
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isTouchSurfaceGhostDrawn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isOriginalDialogViewLaidOut:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 579
    nop

    .line 580
    const/4 v0, 0x1

    .line 579
    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/animation/AnimatedDialog$maybeStartLaunchAnimation$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/animation/AnimatedDialog;->startAnimation(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 611
    return-void

    .line 573
    :cond_1
    :goto_0
    return-void
.end method

.method private final shouldAnimateDialogIntoView()Z
    .locals 3

    .line 769
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    return v1

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 782
    return v1

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 788
    return v1

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    :goto_1
    return v0

    .line 770
    :cond_6
    :goto_2
    return v1
.end method

.method private final startAnimation(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 17
    .param p1, "isLaunching"    # Z
    .param p2, "onLaunchAnimationStart"    # Lkotlin/jvm/functions/Function0;
    .param p3, "onLaunchAnimationEnd"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 705
    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/view/View;

    :goto_0
    move-object v3, v1

    .line 706
    .local v3, "startView":Landroid/view/View;
    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    :goto_1
    move-object v9, v1

    .line 707
    .local v9, "endView":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 708
    .local v1, "startViewController":Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
    new-instance v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 709
    .local v2, "endViewController":Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->setLaunchContainer(Landroid/view/ViewGroup;)V

    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->setLaunchContainer(Landroid/view/ViewGroup;)V

    .line 712
    invoke-virtual {v2}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    move-result-object v4

    .line 713
    .local v4, "endState":Lcom/android/systemui/animation/LaunchAnimator$State;
    new-instance v5, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;

    move-object v10, v5

    move-object v11, v1

    move-object v12, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v4

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 763
    .local v5, "controller":Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1;
    iget-object v10, v0, Lcom/android/systemui/animation/AnimatedDialog;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    move-object v11, v5

    check-cast v11, Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iget v13, v0, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v12, v4

    invoke-static/range {v10 .. v16}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation$default(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZILjava/lang/Object;)Lcom/android/systemui/animation/LaunchAnimator$Animation;

    .line 764
    return-void
.end method

.method static synthetic startAnimation$default(Lcom/android/systemui/animation/AnimatedDialog;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 698
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 700
    sget-object p2, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$1;->INSTANCE:Lcom/android/systemui/animation/AnimatedDialog$startAnimation$1;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 698
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 701
    sget-object p3, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$2;->INSTANCE:Lcom/android/systemui/animation/AnimatedDialog$startAnimation$2;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 698
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/AnimatedDialog;->startAnimation(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final synchronizeNextDraw(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "then"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 544
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->forceDisableSynchronization:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 546
    return-void

    .line 549
    :cond_0
    sget-object v0, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 550
    return-void
.end method


# virtual methods
.method public final getDialog()Landroid/app/Dialog;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public final getDialogContentWithBackground()Landroid/view/ViewGroup;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getExitAnimationDisabled()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    return v0
.end method

.method public final getTouchSurface()Landroid/view/View;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    return-object v0
.end method

.method public final onDialogDismissed()V
    .locals 2

    .line 614
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 616
    return-void

    .line 620
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isLaunching:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 621
    iput-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->dismissRequested:Z

    .line 622
    return-void

    .line 625
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->isDismissing:Z

    if-eqz v0, :cond_2

    .line 626
    return-void

    .line 629
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->isDismissing:Z

    .line 630
    new-instance v0, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/AnimatedDialog$onDialogDismissed$2;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0}, Lcom/android/systemui/animation/AnimatedDialog;->hideDialogIntoView(Lkotlin/jvm/functions/Function1;)V

    .line 640
    return-void
.end method

.method public final prepareForStackDismiss()Landroid/view/View;
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    if-nez v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    return-object v0

    .line 875
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    .line 876
    iget-object v0, v0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 877
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {v0}, Lcom/android/systemui/animation/AnimatedDialog;->prepareForStackDismiss()Landroid/view/View;

    move-result-object v0

    .line 878
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/animation/AnimatedDialog;->parentAnimatedDialog:Lcom/android/systemui/animation/AnimatedDialog;

    iget-object v1, v1, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 881
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 882
    return-object v0
.end method

.method public final setDialogContentWithBackground(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/view/ViewGroup;

    .line 314
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    return-void
.end method

.method public final setExitAnimationDisabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 330
    iput-boolean p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->exitAnimationDisabled:Z

    return-void
.end method

.method public final setTouchSurface(Landroid/view/View;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/view/View;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog;->touchSurface:Landroid/view/View;

    return-void
.end method

.method public final start()V
    .locals 13

    .line 351
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->create()V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 355
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    .line 354
    :goto_0
    nop

    .line 356
    .local v1, "isWindowFullScreen":Z
    const/4 v5, 0x2

    if-eqz v1, :cond_4

    .line 361
    const/4 v3, 0x0

    .line 362
    .local v3, "viewGroupWithBackground":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :cond_1
    if-ge v7, v6, :cond_2

    move v8, v7

    .local v8, "i":I
    add-int/lit8 v7, v7, 0x1

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "decorView.getChildAt(i)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/systemui/animation/AnimatedDialog;->findFirstViewGroupWithBackground(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 364
    if-eqz v3, :cond_1

    .line 371
    .end local v8    # "i":I
    :cond_2
    if-eqz v3, :cond_3

    .end local v3    # "viewGroupWithBackground":Landroid/view/ViewGroup;
    goto/16 :goto_2

    .line 372
    .restart local v3    # "viewGroupWithBackground":Landroid/view/ViewGroup;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to find ViewGroup with background"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    .end local v3    # "viewGroupWithBackground":Landroid/view/ViewGroup;
    :cond_4
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 388
    .local v6, "fullscreenTransparentBackground":Landroid/widget/FrameLayout;
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v7

    .line 389
    move-object v8, v6

    check-cast v8, Landroid/view/View;

    .line 390
    nop

    .line 391
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    .line 388
    invoke-virtual {v7, v8, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 394
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 395
    .local v7, "dialogContentWithBackground":Landroid/widget/FrameLayout;
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    const v8, 0x106000d

    invoke-virtual {v0, v8}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 404
    new-instance v8, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$1;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v8, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 409
    nop

    .line 410
    nop

    .line 409
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 411
    nop

    .line 412
    nop

    .line 411
    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 414
    nop

    .line 415
    move-object v8, v7

    check-cast v8, Landroid/view/View;

    .line 416
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 417
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 418
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 419
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 416
    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    .line 414
    invoke-virtual {v6, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_5

    move v10, v9

    .local v10, "i":I
    add-int/lit8 v9, v9, 0x1

    .line 425
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 426
    .local v11, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 427
    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .end local v11    # "view":Landroid/view/View;
    goto :goto_1

    .line 431
    .end local v10    # "i":I
    :cond_5
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 432
    new-instance v3, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;

    invoke-direct {v3, v0, v7}, Lcom/android/systemui/animation/AnimatedDialog$start$dialogContentWithBackground$2;-><init>(Landroid/view/Window;Landroid/widget/FrameLayout;)V

    check-cast v3, Landroid/view/View$OnLayoutChangeListener;

    iput-object v3, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->getDecorView()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/animation/AnimatedDialog;->decorViewLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 447
    nop

    .end local v6    # "fullscreenTransparentBackground":Landroid/widget/FrameLayout;
    .end local v7    # "dialogContentWithBackground":Landroid/widget/FrameLayout;
    move-object v3, v7

    check-cast v3, Landroid/view/ViewGroup;

    .line 356
    :goto_2
    nop

    .line 449
    .local v3, "dialogContentWithBackground":Landroid/view/ViewGroup;
    iput-object v3, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialogContentWithBackground:Landroid/view/ViewGroup;

    .line 450
    sget v6, Lcom/android/systemui/animation/R$id;->tag_dialog_background:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 452
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 453
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    nop

    .line 454
    sget-object v6, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    const-string v7, "background"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    const/high16 v7, -0x1000000

    if-nez v6, :cond_6

    .line 456
    :goto_3
    goto :goto_4

    .line 455
    :cond_6
    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    if-nez v6, :cond_7

    .line 456
    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    .line 454
    nop

    .line 453
    :goto_4
    iput v7, p0, Lcom/android/systemui/animation/AnimatedDialog;->originalDialogBackgroundColor:I

    .line 461
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setTransitionVisibility(I)V

    .line 464
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    sget v7, Lcom/android/systemui/animation/R$style;->Animation_LaunchAnimation:I

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 468
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/4 v7, 0x3

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 469
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 473
    invoke-virtual {v0, v2}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 474
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Landroid/view/ViewGroup;

    .line 475
    .local v2, "viewWithInsets":Landroid/view/ViewGroup;
    sget-object v6, Lcom/android/systemui/animation/AnimatedDialog$start$1;->INSTANCE:Lcom/android/systemui/animation/AnimatedDialog$start$1;

    check-cast v6, Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 482
    new-instance v6, Lcom/android/systemui/animation/AnimatedDialog$start$2;

    invoke-direct {v6, v3, p0}, Lcom/android/systemui/animation/AnimatedDialog$start$2;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v6, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 502
    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 506
    iget-object v5, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    new-instance v6, Lcom/android/systemui/animation/AnimatedDialog$start$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/animation/AnimatedDialog$start$3;-><init>(Lcom/android/systemui/animation/AnimatedDialog;)V

    check-cast v6, Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setDismissOverride(Ljava/lang/Runnable;)V

    .line 509
    iget-object v5, p0, Lcom/android/systemui/animation/AnimatedDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/animation/AnimatedDialog;->addTouchSurfaceGhost()V

    .line 512
    return-void

    .line 474
    .end local v2    # "viewWithInsets":Landroid/view/ViewGroup;
    :cond_8
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

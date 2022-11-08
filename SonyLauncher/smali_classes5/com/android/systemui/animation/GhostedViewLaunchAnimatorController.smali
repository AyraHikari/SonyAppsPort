.class public Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.super Ljava/lang/Object;
.source "GhostedViewLaunchAnimatorController.kt"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;,
        Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGhostedViewLaunchAnimatorController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GhostedViewLaunchAnimatorController.kt\ncom/android/systemui/animation/GhostedViewLaunchAnimatorController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,462:1\n1#2:463\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0016\u0018\u0000 A2\u00020\u0001:\u0002ABB\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B%\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u00100\u001a\u00020!H\u0016J\u000e\u00101\u001a\u0002022\u0006\u00103\u001a\u00020!J\u0008\u00104\u001a\u000205H\u0014J\u0008\u00106\u001a\u000205H\u0014J\u0010\u00107\u001a\u0002022\u0006\u00108\u001a\u000209H\u0016J \u0010:\u001a\u0002022\u0006\u00103\u001a\u00020!2\u0006\u0010;\u001a\u0002052\u0006\u0010<\u001a\u000205H\u0016J\u0010\u0010=\u001a\u0002022\u0006\u00108\u001a\u000209H\u0016J \u0010>\u001a\u0002022\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010?\u001a\u0002052\u0006\u0010@\u001a\u000205H\u0014R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020%X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u000e\u0010*\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010+\u001a\u00020,8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.R\u000e\u0010/\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;",
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
        "view",
        "Landroid/view/View;",
        "type",
        "",
        "(Landroid/view/View;I)V",
        "ghostedView",
        "cujType",
        "interactionJankMonitor",
        "Lcom/android/internal/jank/InteractionJankMonitor;",
        "(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V",
        "background",
        "Landroid/graphics/drawable/Drawable;",
        "backgroundDrawable",
        "Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;",
        "backgroundInsets",
        "Landroid/graphics/Insets;",
        "kotlin.jvm.PlatformType",
        "getBackgroundInsets",
        "()Landroid/graphics/Insets;",
        "backgroundInsets$delegate",
        "Lkotlin/Lazy;",
        "backgroundView",
        "Landroid/widget/FrameLayout;",
        "Ljava/lang/Integer;",
        "ghostView",
        "Landroid/view/GhostView;",
        "ghostViewMatrix",
        "Landroid/graphics/Matrix;",
        "ghostedViewLocation",
        "",
        "ghostedViewState",
        "Lcom/android/systemui/animation/LaunchAnimator$State;",
        "initialGhostViewMatrixValues",
        "",
        "launchContainer",
        "Landroid/view/ViewGroup;",
        "getLaunchContainer",
        "()Landroid/view/ViewGroup;",
        "setLaunchContainer",
        "(Landroid/view/ViewGroup;)V",
        "launchContainerLocation",
        "launchContainerOverlay",
        "Landroid/view/ViewGroupOverlay;",
        "getLaunchContainerOverlay",
        "()Landroid/view/ViewGroupOverlay;",
        "startBackgroundAlpha",
        "createAnimatorState",
        "fillGhostedViewState",
        "",
        "state",
        "getCurrentBottomCornerRadius",
        "",
        "getCurrentTopCornerRadius",
        "onLaunchAnimationEnd",
        "isExpandingFullyAbove",
        "",
        "onLaunchAnimationProgress",
        "progress",
        "linearProgress",
        "onLaunchAnimationStart",
        "setBackgroundCornerRadius",
        "topCornerRadius",
        "bottomCornerRadius",
        "Companion",
        "WrappedDrawable",
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
.field private static final CORNER_RADIUS_BOTTOM_INDEX:I = 0x4

.field private static final CORNER_RADIUS_TOP_INDEX:I

.field public static final Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

.field private final backgroundInsets$delegate:Lkotlin/Lazy;

.field private backgroundView:Landroid/widget/FrameLayout;

.field private final cujType:Ljava/lang/Integer;

.field private ghostView:Landroid/view/GhostView;

.field private final ghostViewMatrix:Landroid/graphics/Matrix;

.field private final ghostedView:Landroid/view/View;

.field private final ghostedViewLocation:[I

.field private final ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

.field private final initialGhostViewMatrixValues:[F

.field private interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field private launchContainer:Landroid/view/ViewGroup;

.field private final launchContainerLocation:[I

.field private startBackgroundAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V
    .locals 10
    .param p1, "ghostedView"    # Landroid/view/View;
    .param p2, "cujType"    # Ljava/lang/Integer;
    .param p3, "interactionJankMonitor"    # Lcom/android/internal/jank/InteractionJankMonitor;

    const-string v0, "ghostedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 67
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    .line 71
    const/4 v1, 0x0

    const/16 v2, 0x9

    new-array v3, v2, [F

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v4, 0x0

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    .line 72
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    .line 85
    new-instance v1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;-><init>(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    .line 86
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    .line 88
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    .line 89
    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator$State;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 100
    nop

    .line 128
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->_init_$findBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    .line 129
    nop

    .line 52
    return-void

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 52
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 57
    move-object p2, v0

    .line 52
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 58
    move-object p3, v0

    .line 52
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;Lcom/android/internal/jank/InteractionJankMonitor;)V

    .line 461
    return-void
.end method

.method private static final _init_$findBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v0

    .local v1, "$this$findBackground_u24lambda_u2d0":Ljava/util/LinkedList;
    const/4 v2, 0x0

    .line 109
    .local v2, "$i$a$-apply-GhostedViewLaunchAnimatorController$findBackground$views$1":I
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 110
    nop

    .line 108
    .end local v1    # "$this$findBackground_u24lambda_u2d0":Ljava/util/LinkedList;
    .end local v2    # "$i$a$-apply-GhostedViewLaunchAnimatorController$findBackground$views$1":I
    nop

    .line 112
    .local v0, "views":Ljava/util/LinkedList;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 114
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 118
    :cond_2
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 119
    const/4 v2, 0x0

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    move v4, v2

    .local v4, "i":I
    add-int/lit8 v2, v2, 0x1

    .line 120
    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .end local v1    # "v":Landroid/view/View;
    .end local v4    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final synthetic access$getBackground$p(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final getBackgroundInsets()Landroid/graphics/Insets;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    return-object v0
.end method

.method private final getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    const-string v1, "launchContainer.overlay"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 10

    .line 164
    new-instance v9, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getCurrentTopCornerRadius()F

    move-result v5

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getCurrentBottomCornerRadius()F

    move-result v6

    .line 164
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 168
    .local v0, "state":Lcom/android/systemui/animation/LaunchAnimator$State;
    invoke-virtual {p0, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 169
    return-object v0
.end method

.method public final fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 176
    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackgroundInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 177
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v3, v0, Landroid/graphics/Insets;->top:I

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->setTop(I)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->setBottom(I)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->setLeft(I)V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/android/systemui/animation/LaunchAnimator$State;->setRight(I)V

    .line 181
    return-void
.end method

.method protected getCurrentBottomCornerRadius()F
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 157
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    invoke-virtual {v2, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v1, v2

    .line 160
    .local v1, "gradient":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    return v2
.end method

.method protected getCurrentTopCornerRadius()F
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 148
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->Companion:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;

    invoke-virtual {v2, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v1, v2

    .line 151
    .local v1, "gradient":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    return v2
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 3
    .param p1, "isExpandingFullyAbove"    # Z

    .line 287
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    if-nez v0, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    if-nez v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 463
    .local v0, "it":I
    const/4 v1, 0x0

    .line 292
    .local v1, "$i$a$-let-GhostedViewLaunchAnimatorController$onLaunchAnimationEnd$1":I
    iget-object v2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_0

    .line 294
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-GhostedViewLaunchAnimatorController$onLaunchAnimationEnd$1":I
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->getWrapped()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 296
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-static {v0}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 304
    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 21
    .param p1, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p2, "progress"    # F
    .param p3, "linearProgress"    # F

    move-object/from16 v0, p0

    const-string v1, "state"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v1, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    if-nez v1, :cond_0

    return-void

    .line 216
    .local v1, "ghostView":Landroid/view/GhostView;
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 218
    .local v3, "backgroundView":Landroid/widget/FrameLayout;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getVisible()Z

    move-result v4

    const/4 v5, 0x4

    if-nez v4, :cond_2

    .line 219
    invoke-virtual {v1}, Landroid/view/GhostView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 222
    invoke-virtual {v1, v5}, Landroid/view/GhostView;->setVisibility(I)V

    .line 227
    iget-object v4, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 228
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 230
    :cond_1
    return-void

    .line 235
    :cond_2
    invoke-virtual {v1}, Landroid/view/GhostView;->getVisibility()I

    move-result v4

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    .line 236
    invoke-virtual {v1, v6}, Landroid/view/GhostView;->setVisibility(I)V

    .line 237
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 240
    :cond_3
    iget-object v4, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v0, v4}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v5}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    .line 242
    .local v4, "leftChange":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v5

    iget-object v7, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v7

    sub-int/2addr v5, v7

    .line 243
    .local v5, "rightChange":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v8}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 244
    .local v7, "topChange":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v9}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 246
    .local v8, "bottomChange":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v10}, Lcom/android/systemui/animation/LaunchAnimator$State;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    .line 247
    .local v9, "widthRatio":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v11}, Lcom/android/systemui/animation/LaunchAnimator$State;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 248
    .local v10, "heightRatio":F
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 250
    .local v11, "scale":F
    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroid/view/ViewGroup;

    if-eqz v12, :cond_4

    .line 253
    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v13

    iget-object v14, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    invoke-static {v12, v13, v14}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 256
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 257
    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    .line 258
    nop

    .line 259
    iget-object v13, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v13}, Lcom/android/systemui/animation/LaunchAnimator$State;->getCenterX()F

    move-result v13

    iget-object v14, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget v14, v14, v6

    int-to-float v14, v14

    sub-float/2addr v13, v14

    .line 260
    iget-object v14, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v14}, Lcom/android/systemui/animation/LaunchAnimator$State;->getCenterY()F

    move-result v14

    iget-object v15, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    int-to-float v15, v15

    sub-float/2addr v14, v15

    .line 257
    invoke-virtual {v12, v11, v11, v13, v14}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 262
    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    .line 263
    add-int v13, v4, v5

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    .line 264
    add-int v15, v7, v8

    int-to-float v15, v15

    div-float/2addr v15, v14

    .line 262
    invoke-virtual {v12, v13, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 266
    iget-object v12, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v12}, Landroid/view/GhostView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getBackgroundInsets()Landroid/graphics/Insets;

    move-result-object v12

    .line 270
    .local v12, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v13

    iget v14, v12, Landroid/graphics/Insets;->top:I

    sub-int/2addr v13, v14

    .line 271
    .local v13, "topWithInsets":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v14

    iget v15, v12, Landroid/graphics/Insets;->left:I

    sub-int/2addr v14, v15

    .line 272
    .local v14, "leftWithInsets":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v15

    iget v6, v12, Landroid/graphics/Insets;->right:I

    add-int/2addr v15, v6

    .line 273
    .local v15, "rightWithInsets":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v6

    move-object/from16 v18, v1

    .end local v1    # "ghostView":Landroid/view/GhostView;
    .local v18, "ghostView":Landroid/view/GhostView;
    iget v1, v12, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v6, v1

    .line 275
    .local v6, "bottomWithInsets":I
    iget-object v1, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget v1, v1, v16

    sub-int v1, v13, v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTop(I)V

    .line 276
    iget-object v1, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget v1, v1, v16

    sub-int v1, v6, v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 277
    iget-object v1, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    const/16 v16, 0x0

    aget v1, v1, v16

    sub-int v1, v14, v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLeft(I)V

    .line 278
    iget-object v1, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    aget v1, v1, v16

    sub-int v1, v15, v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setRight(I)V

    .line 280
    iget-object v1, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 281
    .local v1, "backgroundDrawable":Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;
    invoke-virtual {v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->getWrapped()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-nez v16, :cond_5

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    goto :goto_0

    :cond_5
    move-object/from16 v17, v16

    .local v17, "it":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 282
    .local v16, "$i$a$-let-GhostedViewLaunchAnimatorController$onLaunchAnimationProgress$1":I
    move-object/from16 v19, v1

    .end local v1    # "backgroundDrawable":Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;
    .local v19, "backgroundDrawable":Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result v2

    move-object/from16 v20, v3

    move-object/from16 v3, v17

    .end local v17    # "it":Landroid/graphics/drawable/Drawable;
    .local v3, "it":Landroid/graphics/drawable/Drawable;
    .local v20, "backgroundView":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->setBackgroundCornerRadius(Landroid/graphics/drawable/Drawable;FF)V

    .line 283
    nop

    .line 281
    .end local v3    # "it":Landroid/graphics/drawable/Drawable;
    .end local v16    # "$i$a$-let-GhostedViewLaunchAnimatorController$onLaunchAnimationProgress$1":I
    nop

    .line 284
    :goto_0
    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 5
    .param p1, "isExpandingFullyAbove"    # Z

    .line 184
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 187
    const-string v0, "GhostedViewLaunchAnimatorController"

    const-string v1, "Skipping animation as ghostedView is not attached to a ViewGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainerOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const/16 v0, 0xff

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    .line 197
    new-instance v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 198
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    .line 204
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/view/GhostView;->getAnimationMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 205
    .local v0, "matrix":Landroid/graphics/Matrix;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 207
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    if-nez v1, :cond_5

    :goto_3
    goto :goto_4

    :cond_5
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 463
    .local v1, "it":I
    const/4 v2, 0x0

    .line 207
    .local v2, "$i$a$-let-GhostedViewLaunchAnimatorController$onLaunchAnimationStart$1":I
    iget-object v3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    goto :goto_3

    .line 208
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-GhostedViewLaunchAnimatorController$onLaunchAnimationStart$1":I
    :goto_4
    return-void
.end method

.method protected setBackgroundCornerRadius(Landroid/graphics/drawable/Drawable;FF)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .param p2, "topCornerRadius"    # F
    .param p3, "bottomCornerRadius"    # F

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->setBackgroundRadius(FF)V

    .line 143
    :goto_0
    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/view/ViewGroup;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    return-void
.end method

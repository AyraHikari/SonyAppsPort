.class public final Lcom/android/systemui/animation/ViewRootSync;
.super Ljava/lang/Object;
.source "ViewRootSync.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bJ \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000cH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/android/systemui/animation/ViewRootSync;",
        "",
        "()V",
        "surfaceSyncer",
        "Landroid/window/SurfaceSyncer;",
        "synchronizeNextDraw",
        "",
        "view",
        "Landroid/view/View;",
        "otherView",
        "then",
        "Lkotlin/Function0;",
        "Ljava/lang/Runnable;",
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
.field public static final INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

.field private static surfaceSyncer:Landroid/window/SurfaceSyncer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/animation/ViewRootSync;

    invoke-direct {v0}, Lcom/android/systemui/animation/ViewRootSync;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "otherView"    # Landroid/view/View;
    .param p2, "then"    # Ljava/lang/Runnable;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "then"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    new-instance v1, Lcom/android/systemui/animation/ViewRootSync$synchronizeNextDraw$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/animation/ViewRootSync$synchronizeNextDraw$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherView"    # Landroid/view/View;
    .param p3, "then"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "then"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Landroid/window/SurfaceSyncer;

    invoke-direct {v0}, Landroid/window/SurfaceSyncer;-><init>()V

    move-object v1, v0

    .local v1, "$this$synchronizeNextDraw_u24lambda_u2d0":Landroid/window/SurfaceSyncer;
    const/4 v2, 0x0

    .line 33
    .local v2, "$i$a$-apply-ViewRootSync$synchronizeNextDraw$1":I
    new-instance v3, Lcom/android/systemui/animation/ViewRootSync$synchronizeNextDraw$1$syncId$1;

    invoke-direct {v3, p3}, Lcom/android/systemui/animation/ViewRootSync$synchronizeNextDraw$1$syncId$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/lang/Runnable;)I

    move-result v3

    .line 34
    .local v3, "syncId":I
    invoke-virtual {v1, v3, p1}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/view/View;)Z

    .line 35
    invoke-virtual {v1, v3, p2}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/view/View;)Z

    .line 36
    invoke-virtual {v1, v3}, Landroid/window/SurfaceSyncer;->markSyncReady(I)V

    .line 37
    nop

    .line 32
    .end local v1    # "$this$synchronizeNextDraw_u24lambda_u2d0":Landroid/window/SurfaceSyncer;
    .end local v2    # "$i$a$-apply-ViewRootSync$synchronizeNextDraw$1":I
    .end local v3    # "syncId":I
    sput-object v0, Lcom/android/systemui/animation/ViewRootSync;->surfaceSyncer:Landroid/window/SurfaceSyncer;

    .line 38
    return-void

    .line 28
    :cond_1
    :goto_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 29
    return-void
.end method

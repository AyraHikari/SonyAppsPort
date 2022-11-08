.class Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;
.super Ljava/lang/Object;
.source "BitmapCreationCheck.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/BitmapCreationCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;
    }
.end annotation


# instance fields
.field private final mCurrentThreadDrawing:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentThreadDrawing(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->mCurrentThreadDrawing:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monBitmapCreated(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->onBitmapCreated()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$$ExternalSyntheticLambda0;-><init>()V

    .line 58
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->mCurrentThreadDrawing:Ljava/lang/ThreadLocal;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;-><init>()V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/Boolean;
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private onBitmapCreated()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->mCurrentThreadDrawing:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "BitmapCreationCheck"

    const-string v2, "Bitmap created during draw pass"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 63
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 81
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 72
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 69
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 78
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 66
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 75
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;-><init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 86
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 89
    return-void
.end method

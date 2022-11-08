.class Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;
.super Ljava/lang/Object;
.source "GridCustomizationsProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/GridCustomizationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewLifecycleObserver"
.end annotation


# instance fields
.field public destroyed:Z

.field public final renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

.field final synthetic this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;)V
    .locals 0
    .param p2, "renderer"    # Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    .line 223
    iput-object p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->destroyed:Z

    .line 224
    iput-object p2, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->renderer:Lcom/android/launcher3/graphics/PreviewSurfaceRenderer;

    .line 225
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->-$$Nest$mdestroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    .line 236
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;->this$0:Lcom/android/launcher3/graphics/GridCustomizationsProvider;

    invoke-static {v0, p0}, Lcom/android/launcher3/graphics/GridCustomizationsProvider;->-$$Nest$mdestroyObserver(Lcom/android/launcher3/graphics/GridCustomizationsProvider;Lcom/android/launcher3/graphics/GridCustomizationsProvider$PreviewLifecycleObserver;)V

    .line 230
    const/4 v0, 0x1

    return v0
.end method

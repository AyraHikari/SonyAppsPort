.class public final Lcom/android/launcher3/taskbar/TaskbarInsetsController;
.super Ljava/lang/Object;
.source "TaskbarInsetsController.kt"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0010H\u0002J\u000e\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u001e\u001a\u00020\u000eJ\u0006\u0010\u001f\u001a\u00020\u000eJ\u000e\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/android/launcher3/taskbar/TaskbarInsetsController;",
        "Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;",
        "context",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        "(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V",
        "contentRegion",
        "Landroid/graphics/Region;",
        "getContext",
        "()Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        "controllers",
        "Lcom/android/launcher3/taskbar/TaskbarControllers;",
        "deviceProfileChangeListener",
        "Lkotlin/Function1;",
        "Lcom/android/launcher3/DeviceProfile;",
        "",
        "taskbarHeightForIme",
        "",
        "getTaskbarHeightForIme",
        "()I",
        "windowLayoutParams",
        "Landroid/view/WindowManager$LayoutParams;",
        "dumpLogs",
        "prefix",
        "",
        "pw",
        "Ljava/io/PrintWriter;",
        "getReducingInsetsForTaskbarInsetsHeight",
        "Landroid/graphics/Insets;",
        "height",
        "init",
        "onDestroy",
        "onTaskbarWindowHeightOrInsetsChanged",
        "updateInsetsTouchability",
        "insetsInfo",
        "Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;",
        "packages__apps__Launcher3__android_common__Launcher3QuickStepLib"
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
.field private final contentRegion:Landroid/graphics/Region;

.field private final context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final deviceProfileChangeListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/launcher3/DeviceProfile;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final taskbarHeightForIme:I

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 2
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 39
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    sget v1, Lcom/android/quickstep/KtR$dimen;->taskbar_ime_size:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    .line 41
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->contentRegion:Landroid/graphics/Region;

    .line 42
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$deviceProfileChangeListener$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarInsetsController;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lkotlin/jvm/functions/Function1;

    .line 36
    return-void
.end method

.method private final getReducingInsetsForTaskbarInsetsHeight(I)Landroid/graphics/Insets;
    .locals 2
    .param p1, "height"    # I

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const-string v0, "windowLayoutParams"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    const-string v1, "of(0, windowLayoutParams.height - height, 0, 0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const-string v0, "TaskbarInsetsController:"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\twindowHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const-string v3, "windowLayoutParams"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tprovidedInternalInsets[ITYPE_EXTRA_NAVIGATION_BAR]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    const/16 v4, 0x15

    aget-object v1, v1, v4

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tprovidedInternalInsets[ITYPE_BOTTOM_TAPPABLE_ELEMENT]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    const/16 v5, 0x12

    aget-object v1, v1, v5

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tprovidedInternalImeInsets[ITYPE_EXTRA_NAVIGATION_BAR]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    aget-object v1, v1, v4

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tprovidedInternalImeInsets[ITYPE_BOTTOM_TAPPABLE_ELEMENT]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v1

    :goto_0
    iget-object v1, v2, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    aget-object v1, v1, v5

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public final getContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-object v0
.end method

.method public final getTaskbarHeightForIme()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    return v0
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 6
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "context.windowLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 54
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .local v0, "wmWrapper":Lcom/android/systemui/shared/system/WindowManagerWrapper;
    nop

    .line 56
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const-string v3, "windowLayoutParams"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 58
    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 59
    nop

    .line 58
    nop

    .line 60
    nop

    .line 58
    nop

    .line 55
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->setProvidesInsetsTypes(Landroid/view/WindowManager$LayoutParams;[I)V

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    const/16 v4, 0x18

    new-array v5, v4, [Landroid/graphics/Insets;

    iput-object v5, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    .line 65
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    new-array v4, v4, [Landroid/graphics/Insets;

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarWindowHeightOrInsetsChanged()V

    .line 69
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/view/WindowManager$LayoutParams;->insetsRoundedCornerFrame:Z

    .line 70
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 71
    return-void

    :array_0
    .array-data 4
        0x15
        0x12
        0x8
    .end array-data
.end method

.method public final onDestroy()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->deviceProfileChangeListener:Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    .line 75
    return-void
.end method

.method public final onTaskbarWindowHeightOrInsetsChanged()V
    .locals 9

    .line 78
    nop

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const-string v1, "controllers"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getContentHeightToReportToApps()I

    move-result v0

    .line 78
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getReducingInsetsForTaskbarInsetsHeight(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 81
    .local v0, "reducingSize":Landroid/graphics/Insets;
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->contentRegion:Landroid/graphics/Region;

    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Insets;->top:I

    .line 82
    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "windowLayoutParams"

    if-nez v7, :cond_1

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_1
    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 81
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 83
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    const/16 v4, 0x15

    aput-object v0, v3, v4

    .line 84
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_3

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    const/16 v5, 0x8

    aput-object v0, v3, v5

    .line 85
    nop

    .line 86
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    iget-object v1, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getTappableHeightToReportToApps()I

    move-result v1

    .line 85
    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getReducingInsetsForTaskbarInsetsHeight(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_5

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_5
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    const/16 v3, 0x12

    aput-object v0, v1, v3

    .line 88
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_6

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalInsets:[Landroid/graphics/Insets;

    aput-object v0, v1, v5

    .line 90
    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->taskbarHeightForIme:I

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->getReducingInsetsForTaskbarInsetsHeight(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_7

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_7
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    aput-object v0, v1, v4

    .line 92
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_8
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    aput-object v0, v1, v3

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_9

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v2, v1

    :goto_0
    iget-object v1, v2, Landroid/view/WindowManager$LayoutParams;->providedInternalImeInsets:[Landroid/graphics/Insets;

    aput-object v0, v1, v5

    .line 94
    return-void
.end method

.method public final updateInsetsTouchability(Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;)V
    .locals 6
    .param p1, "insetsInfo"    # Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;

    const-string v0, "insetsInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p1, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    const/4 v1, 0x0

    const-string v2, "controllers"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    .line 114
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v4, p1, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .line 113
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addVisibleButtonsRegion(Lcom/android/launcher3/views/BaseDragLayer;Landroid/graphics/Region;)V

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "insetsIsTouchableRegion":Z
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarDragLayer;->getAlpha()F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    const/4 v4, 0x3

    if-gez v3, :cond_1

    .line 119
    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_3

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_3

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->uiController:Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isTaskbarTouchable()Z

    move-result v3

    if-nez v3, :cond_5

    .line 124
    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    goto/16 :goto_3

    .line 125
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_6
    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 127
    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    goto :goto_3

    .line 128
    :cond_7
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    const/high16 v5, 0x20000

    invoke-static {v3, v5}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 130
    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    goto :goto_3

    .line 131
    :cond_8
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->controllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-nez v3, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move-object v1, v3

    :goto_0
    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->areIconsVisible()Z

    move-result v1

    if-nez v1, :cond_b

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    const v2, 0x7ffff

    invoke-static {v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->hasOpenView(Lcom/android/launcher3/views/ActivityContext;I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 133
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isNavBarKidsModeActive()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1

    .line 146
    :cond_a
    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    goto :goto_3

    .line 136
    :cond_b
    :goto_1
    nop

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isTaskbarWindowFullscreen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 138
    const/4 v4, 0x0

    goto :goto_2

    .line 140
    :cond_c
    iget-object v1, p1, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->contentRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 141
    nop

    .line 136
    :goto_2
    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/system/ViewTreeObserverWrapper$InsetsInfo;->setTouchableInsets(I)V

    .line 144
    const/4 v0, 0x0

    .line 148
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->context:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->excludeFromMagnificationRegion(Z)V

    .line 149
    return-void
.end method

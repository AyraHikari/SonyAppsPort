.class final synthetic Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;
.super Ljava/lang/Object;
.source "TaskbarInsetsController.kt"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;->function:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final synthetic onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarInsetsController$sam$com_android_launcher3_DeviceProfile_OnDeviceProfileChangeListener$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;
.super Ljava/lang/Object;
.source "UiThreadHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/UiThreadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiCallbacks"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIMM:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;->mContext:Landroid/content/Context;

    .line 115
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 135
    return v1

    .line 132
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;

    iget-object v1, p0, Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;->mContext:Landroid/content/Context;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v3, v4}, Lcom/android/launcher3/util/UiThreadHelper$AsyncCommand;->execute(Landroid/content/Context;II)V

    .line 133
    return v2

    .line 129
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 130
    return v2

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/util/UiThreadHelper$UiCallbacks;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "STATS_LOGGER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 125
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    :cond_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

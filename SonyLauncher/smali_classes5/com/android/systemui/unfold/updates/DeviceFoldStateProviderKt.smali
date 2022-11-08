.class public final Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;
.super Ljava/lang/Object;
.source "DeviceFoldStateProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u0007H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0008\u0010\u0005\"\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "DEBUG",
        "",
        "FULLY_OPEN_THRESHOLD_DEGREES",
        "",
        "getFULLY_OPEN_THRESHOLD_DEGREES$annotations",
        "()V",
        "START_CLOSING_ON_APPS_THRESHOLD_DEGREES",
        "",
        "getSTART_CLOSING_ON_APPS_THRESHOLD_DEGREES$annotations",
        "TAG",
        "",
        "stateToString",
        "update",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FULLY_OPEN_THRESHOLD_DEGREES:F = 15.0f

.field public static final START_CLOSING_ON_APPS_THRESHOLD_DEGREES:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "DeviceFoldProvider"


# direct methods
.method public static final synthetic access$stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "update"    # I

    .line 1
    invoke-static {p0}, Lcom/android/systemui/unfold/updates/DeviceFoldStateProviderKt;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getFULLY_OPEN_THRESHOLD_DEGREES$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSTART_CLOSING_ON_APPS_THRESHOLD_DEGREES$annotations()V
    .locals 0

    return-void
.end method

.method private static final stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "update"    # I

    .line 222
    packed-switch p0, :pswitch_data_0

    .line 229
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 228
    :pswitch_0
    const-string v0, "FINISH_CLOSED"

    goto :goto_0

    .line 227
    :pswitch_1
    const-string v0, "FINISH_FULL_OPEN"

    goto :goto_0

    .line 226
    :pswitch_2
    const-string v0, "FINISH_HALF_OPEN"

    goto :goto_0

    .line 225
    :pswitch_3
    const-string v0, "UNFOLDED_SCREEN_AVAILABLE"

    goto :goto_0

    .line 224
    :pswitch_4
    const-string v0, "START_CLOSING"

    goto :goto_0

    .line 223
    :pswitch_5
    const-string v0, "START_OPENING"

    .line 222
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

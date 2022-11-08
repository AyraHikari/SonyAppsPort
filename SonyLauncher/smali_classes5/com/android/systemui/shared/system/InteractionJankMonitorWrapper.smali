.class public final Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;
.super Ljava/lang/Object;
.source "InteractionJankMonitorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper$CujType;
    }
.end annotation


# static fields
.field public static final CUJ_ALL_APPS_SCROLL:I = 0x1a

.field public static final CUJ_APP_CLOSE_TO_HOME:I = 0x9

.field public static final CUJ_APP_CLOSE_TO_PIP:I = 0xa

.field public static final CUJ_APP_LAUNCH_FROM_ICON:I = 0x8

.field public static final CUJ_APP_LAUNCH_FROM_RECENTS:I = 0x7

.field public static final CUJ_APP_LAUNCH_FROM_WIDGET:I = 0x1b

.field public static final CUJ_OPEN_ALL_APPS:I = 0x19

.field public static final CUJ_QUICK_SWITCH:I = 0xb

.field public static final CUJ_SPLIT_SCREEN_ENTER:I = 0x31

.field private static final TAG:Ljava/lang/String; = "JankMonitorWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static begin(Landroid/view/View;I)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "cujType"    # I

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 74
    return-void
.end method

.method public static begin(Landroid/view/View;IJ)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "cujType"    # I
    .param p2, "timeout"    # J

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    .line 85
    :cond_0
    nop

    .line 86
    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 88
    .local v0, "builder":Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 89
    return-void
.end method

.method public static begin(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "cujType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    .line 100
    :cond_0
    nop

    .line 101
    invoke-static {p1, p0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    .line 102
    .local v0, "builder":Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {v0, p2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    .line 105
    :cond_1
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    .line 106
    return-void
.end method

.method public static cancel(I)V
    .locals 2
    .param p0, "cujType"    # I

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 124
    return-void
.end method

.method public static end(I)V
    .locals 2
    .param p0, "cujType"    # I

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 116
    return-void
.end method

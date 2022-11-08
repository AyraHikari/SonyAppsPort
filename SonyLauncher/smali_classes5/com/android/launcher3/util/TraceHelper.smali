.class public Lcom/android/launcher3/util/TraceHelper;
.super Ljava/lang/Object;
.source "TraceHelper.java"


# static fields
.field public static final FLAG_ALLOW_BINDER_TRACKING:I = 0x1

.field public static final FLAG_CHECK_FOR_RACE_CONDITIONS:I = 0x4

.field public static final FLAG_IGNORE_BINDERS:I = 0x2

.field public static final FLAG_UI_EVENT:I = 0x5

.field public static INSTANCE:Lcom/android/launcher3/util/TraceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/android/launcher3/util/TraceHelper;

    invoke-direct {v0}, Lcom/android/launcher3/util/TraceHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .param p0, "rpcName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 82
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "traceToken":Ljava/lang/Object;
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 84
    return-object v1

    .line 86
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 87
    throw v1
.end method


# virtual methods
.method public beginFlagsOverride(I)Ljava/lang/Object;
    .locals 1
    .param p1, "flags"    # I

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public beginSection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public beginSection(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 57
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public endFlagsOverride(Ljava/lang/Object;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public endSection(Ljava/lang/Object;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/Object;

    .line 65
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    return-void
.end method

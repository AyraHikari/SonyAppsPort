.class public abstract Lcom/sonymobile/music/debug/DebugBase;
.super Ljava/lang/Object;
.source "DebugBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/debug/DebugBase$Logger;
    }
.end annotation


# static fields
.field private static final mPerformanceDebugLoggingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLogD:Lcom/sonymobile/music/debug/DebugBase$Logger;

.field private final mLogE:Lcom/sonymobile/music/debug/DebugBase$Logger;

.field private final mLogTag:Ljava/lang/String;

.field private final mLogW:Lcom/sonymobile/music/debug/DebugBase$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonymobile/music/debug/DebugBase;->mPerformanceDebugLoggingList:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p2, Lcom/sonymobile/music/debug/DebugBase$1;

    invoke-direct {p2, p0}, Lcom/sonymobile/music/debug/DebugBase$1;-><init>(Lcom/sonymobile/music/debug/DebugBase;)V

    iput-object p2, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogD:Lcom/sonymobile/music/debug/DebugBase$Logger;

    .line 30
    new-instance p2, Lcom/sonymobile/music/debug/DebugBase$2;

    invoke-direct {p2, p0}, Lcom/sonymobile/music/debug/DebugBase$2;-><init>(Lcom/sonymobile/music/debug/DebugBase;)V

    iput-object p2, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogW:Lcom/sonymobile/music/debug/DebugBase$Logger;

    .line 37
    new-instance p2, Lcom/sonymobile/music/debug/DebugBase$3;

    invoke-direct {p2, p0}, Lcom/sonymobile/music/debug/DebugBase$3;-><init>(Lcom/sonymobile/music/debug/DebugBase;)V

    iput-object p2, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogE:Lcom/sonymobile/music/debug/DebugBase$Logger;

    .line 51
    iput-object p1, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogTag:Ljava/lang/String;

    return-void
.end method

.method private static getDeclaringClassHierarchy(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0}, Lcom/sonymobile/music/debug/DebugBase;->getDeclaringClassHierarchy(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/sonymobile/music/debug/DebugBase;->getDeclaringClassHierarchy(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logHuge(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/music/debug/DebugBase$Logger;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const/16 v2, 0xa

    .line 147
    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/sonymobile/music/debug/DebugBase$Logger;->line(Ljava/lang/Class;Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 152
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lcom/sonymobile/music/debug/DebugBase$Logger;->line(Ljava/lang/Class;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static logTrace(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/music/debug/DebugBase$Logger;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 159
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 161
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-interface {p0, p1, v0}, Lcom/sonymobile/music/debug/DebugBase$Logger;->line(Ljava/lang/Class;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 164
    array-length v2, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-interface {p0, p1, v4}, Lcom/sonymobile/music/debug/DebugBase$Logger;->line(Ljava/lang/Class;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 169
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Caused by:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sonymobile/music/debug/DebugBase$Logger;->line(Ljava/lang/Class;Ljava/lang/String;)V

    .line 172
    invoke-static {p0, p1, p2, p3}, Lcom/sonymobile/music/debug/DebugBase;->logTrace(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method private static logTraceHere(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/music/debug/DebugBase$Logger;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/sonymobile/music/debug/DebugBase;->logTrace(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static setMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 111
    invoke-static {p0}, Lcom/sonymobile/music/debug/DebugBase;->getDeclaringClassHierarchy(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public log(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->logD(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public logD(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-static {p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->setMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogTag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logDHuge(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogD:Lcom/sonymobile/music/debug/DebugBase$Logger;

    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/music/debug/DebugBase;->logHuge(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logDTrace(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogD:Lcom/sonymobile/music/debug/DebugBase$Logger;

    invoke-static {v0, p1, p2, p3}, Lcom/sonymobile/music/debug/DebugBase;->logTrace(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logDTraceHere(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogD:Lcom/sonymobile/music/debug/DebugBase$Logger;

    invoke-static {v0, p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->logTraceHere(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public logE(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-static {p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->setMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogTag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logE(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->setMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 81
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p2, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogE:Lcom/sonymobile/music/debug/DebugBase$Logger;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3}, Lcom/sonymobile/music/debug/DebugBase;->logTrace(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logE(Ljava/lang/Class;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogE:Lcom/sonymobile/music/debug/DebugBase$Logger;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/sonymobile/music/debug/DebugBase;->logTrace(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logW(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-static {p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->setMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object p2, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogTag:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logW(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->setMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 70
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p2, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogW:Lcom/sonymobile/music/debug/DebugBase$Logger;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3}, Lcom/sonymobile/music/debug/DebugBase;->logTrace(Lcom/sonymobile/music/debug/DebugBase$Logger;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public startPerformanceLog(Ljava/lang/String;)V
    .locals 3

    .line 181
    sget-object v0, Lcom/sonymobile/music/debug/DebugBase;->mPerformanceDebugLoggingList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PerformanceLogging - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = INTERRUPTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 186
    sget-object v2, Lcom/sonymobile/music/debug/DebugBase;->mPerformanceDebugLoggingList:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopPerformanceLog(Ljava/lang/String;)V
    .locals 5

    .line 190
    sget-object v0, Lcom/sonymobile/music/debug/DebugBase;->mPerformanceDebugLoggingList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 193
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PerformanceLogging - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

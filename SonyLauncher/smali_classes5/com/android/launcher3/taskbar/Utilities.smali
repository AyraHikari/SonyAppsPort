.class public final Lcom/android/launcher3/taskbar/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/util/StringJoiner;
    .param p1, "flags"    # I
    .param p2, "flag"    # I
    .param p3, "flagName"    # Ljava/lang/String;

    .line 29
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0, p3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 32
    :cond_0
    return-void
.end method

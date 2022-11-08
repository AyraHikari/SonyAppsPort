.class public abstract Lcom/android/launcher3/util/AbsGridOccupancy;
.super Ljava/lang/Object;
.source "AbsGridOccupancy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected findVacantCell([I[[ZIIII)Z
    .locals 8
    .param p1, "vacantOut"    # [I
    .param p2, "cells"    # [[Z
    .param p3, "countX"    # I
    .param p4, "countY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I

    .line 36
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    add-int v1, v0, p6

    const/4 v2, 0x0

    if-gt v1, p4, :cond_6

    .line 37
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    add-int v3, v1, p5

    if-gt v3, p3, :cond_5

    .line 38
    aget-object v3, p2, v1

    aget-boolean v3, v3, v0

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 40
    .local v3, "available":Z
    move v5, v1

    .local v5, "i":I
    :goto_2
    add-int v6, v1, p5

    if-ge v5, v6, :cond_3

    .line 41
    move v6, v0

    .local v6, "j":I
    :goto_3
    add-int v7, v0, p6

    if-ge v6, v7, :cond_2

    .line 42
    if-eqz v3, :cond_0

    aget-object v7, p2, v5

    aget-boolean v7, v7, v6

    if-nez v7, :cond_0

    move v7, v4

    goto :goto_4

    :cond_0
    move v7, v2

    :goto_4
    move v3, v7

    .line 43
    if-nez v3, :cond_1

    goto :goto_5

    .line 41
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 40
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 46
    .end local v5    # "i":I
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 47
    aput v1, p1, v2

    .line 48
    aput v0, p1, v4

    .line 49
    return v4

    .line 37
    .end local v3    # "available":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    .end local v1    # "x":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "y":I
    :cond_6
    return v2
.end method

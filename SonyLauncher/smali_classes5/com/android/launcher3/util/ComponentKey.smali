.class public Lcom/android/launcher3/util/ComponentKey;
.super Ljava/lang/Object;
.source "ComponentKey.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field private final mHashCode:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 38
    iput-object p1, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 39
    iput-object p2, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/ComponentKey;->mHashCode:I

    .line 42
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/launcher3/util/ComponentKey;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 69
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 70
    .local v0, "sep":I
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 74
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_1

    .line 75
    return-object v1

    .line 78
    :cond_1
    :try_start_0
    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    add-int/lit8 v4, v0, 0x1

    .line 79
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-object v3

    .line 80
    :catch_0
    move-exception v3

    .line 81
    .local v3, "ex":Ljava/lang/NumberFormatException;
    return-object v1

    .line 71
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 52
    .local v0, "other":Lcom/android/launcher3/util/ComponentKey;
    iget-object v1, v0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/launcher3/util/ComponentKey;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

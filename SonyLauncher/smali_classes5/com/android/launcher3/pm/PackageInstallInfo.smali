.class public final Lcom/android/launcher3/pm/PackageInstallInfo;
.super Ljava/lang/Object;
.source "PackageInstallInfo.java"


# static fields
.field public static final STATUS_FAILED:I = 0x3

.field public static final STATUS_INSTALLED:I = 0x0

.field public static final STATUS_INSTALLED_DOWNLOADING:I = 0x2

.field public static final STATUS_INSTALLING:I = 0x1


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final packageName:Ljava/lang/String;

.field public final progress:I

.field public final state:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageInstaller$SessionInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    .line 39
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 40
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, ""

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    .line 41
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getProgress()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->progress:I

    .line 42
    invoke-static {p1}, Lcom/android/launcher3/pm/InstallSessionHelper;->getUserHandle(Landroid/content/pm/PackageInstaller$SessionInfo;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "progress"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p2, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    .line 49
    iput p3, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->progress:I

    .line 50
    iput-object p4, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    .line 51
    return-void
.end method

.method private dumpProperties()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/pm/PackageInstallInfo;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    return-object v0
.end method

.method public static fromInstallingState(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/launcher3/pm/PackageInstallInfo;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 54
    new-instance v0, Lcom/android/launcher3/pm/PackageInstallInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pm/PackageInstallInfo;-><init>(Landroid/content/pm/PackageInstaller$SessionInfo;)V

    return-object v0
.end method

.method public static fromState(ILjava/lang/String;Landroid/os/UserHandle;)Lcom/android/launcher3/pm/PackageInstallInfo;
    .locals 2
    .param p0, "state"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 58
    new-instance v0, Lcom/android/launcher3/pm/PackageInstallInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/android/launcher3/pm/PackageInstallInfo;-><init>(Ljava/lang/String;IILandroid/os/UserHandle;)V

    return-object v0
.end method

.method private stateToString()Ljava/lang/String;
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    packed-switch v0, :pswitch_data_0

    .line 81
    const-string v0, "INVALID STATE"

    return-object v0

    .line 80
    :pswitch_0
    const-string v0, "STATUS_FAILED"

    return-object v0

    .line 79
    :pswitch_1
    const-string v0, "STATUS_INSTALLED_DOWNLOADING"

    return-object v0

    .line 78
    :pswitch_2
    const-string v0, "STATUS_INSTALLING"

    return-object v0

    .line 77
    :pswitch_3
    const-string v0, "STATUS_INSTALLED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher3/pm/PackageInstallInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

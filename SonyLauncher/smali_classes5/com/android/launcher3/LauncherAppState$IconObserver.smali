.class Lcom/android/launcher3/LauncherAppState$IconObserver;
.super Ljava/lang/Object;
.source "LauncherAppState.java"

# interfaces
.implements Lcom/android/launcher3/icons/IconProvider$IconChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppState$IconObserver;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    return-void
.end method


# virtual methods
.method public onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$fgetmModel(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/LauncherModel;->onAppIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 207
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 225
    const-string v0, "themed_icons"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$fgetmIconProvider(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$fgetmContext(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/LauncherIconProvider;->setIconThemeSupported(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState$IconObserver;->verifyIconChanged()V

    .line 229
    :cond_0
    return-void
.end method

.method public onSystemIconStateChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "iconState"    # Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$fgetmContext(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShape;->init(Landroid/content/Context;)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$mrefreshAndReloadLauncher(Lcom/android/launcher3/LauncherAppState;)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$fgetmContext(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_icon_shape_path"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 214
    return-void
.end method

.method verifyIconChanged()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$fgetmIconProvider(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/LauncherIconProvider;->getSystemIconState()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "iconState":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$IconObserver;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->-$$Nest$fgetmContext(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_icon_shape_path"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppState$IconObserver;->onSystemIconStateChanged(Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

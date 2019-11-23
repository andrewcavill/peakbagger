<template>
    <div>
        <b-navbar id="menubar" toggleable="lg" type="dark">

            <b-navbar-brand href="#">
                <img id="logo" src="/logo1.png" alt="Peak Bagger NZ">
            </b-navbar-brand>

            <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

            <b-collapse id="nav-collapse" is-nav>

                <b-navbar-nav>
                    <b-nav-item to="/">Home</b-nav-item>
                    <b-nav-item to="/leaderboard">Leaderboard</b-nav-item>
                    <b-nav-item to="/about">About</b-nav-item>
                    <b-nav-item to="/contact">Contact</b-nav-item>
                </b-navbar-nav>

                <!-- Right aligned nav items -->
                <b-navbar-nav class="ml-auto">

                    <b-nav-form>
                        <b-form-input size="sm" class="mr-sm-2" placeholder="Search"></b-form-input>
                        <b-button size="sm" class="my-2 my-sm-0" type="submit">Search</b-button>
                    </b-nav-form>

                    <b-nav-item-dropdown right>
                        <!-- Using 'button-content' slot -->
                        <template v-slot:button-content>
                            User
                        </template>
                        <b-dropdown-item href="#">Profile</b-dropdown-item>
                        <b-dropdown-item href="#">Sign Out</b-dropdown-item>
                    </b-nav-item-dropdown>

                </b-navbar-nav>

            </b-collapse>

        </b-navbar>
    </div>
</template>

<script>
export default {
    name: "MenuBar"
}
</script>

<style>

#menubar {
    margin-bottom: 10px;
    background-color: #31798e;
}

.navbar-brand {
    padding-top: 0 !important;
    padding-bottom: 0 !important;
}

#logo {
    width: 40px;
    height: 40px;
}

</style>